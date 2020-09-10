# Databricks notebook source
# MAGIC %md ## Use MXNet on a single node
# MAGIC 
# MAGIC This notebook demonstrates how to use MXNet on the Spark driver node to fit a neural network on MNIST handwritten digit recognition data.
# MAGIC 
# MAGIC Prerequisites:
# MAGIC * A GPU-enabled cluster on Databricks.
# MAGIC * MXNet installed with GPU support.
# MAGIC 
# MAGIC The content of this notebook is [copied from MXNet project](https://github.com/dmlc/mxnet-notebooks/blob/master/python/tutorials/mnist.ipynb) under [Apache 2.0 license](https://github.com/dmlc/mxnet-notebooks/blob/master/LICENSE) with slight modification to run on Databricks. Thanks to the developers of MXNet for this example!

# COMMAND ----------

# MAGIC %md ### Handwritten Digit Recognition
# MAGIC 
# MAGIC This tutorial guides you through a classic computer vision application: identify hand written digits with neural networks. 
# MAGIC 
# MAGIC #### Load data
# MAGIC 
# MAGIC We first fetch the [MNIST](http://yann.lecun.com/exdb/mnist/) dataset, which is a commonly used dataset for handwritten digit recognition. Each image in this dataset has been resized into 28x28 with grayscale value between 0 and 254. The following codes download and load the images and the according labels into `numpy`.

# COMMAND ----------

import numpy as np
import os
import urllib
import gzip
import struct
def download_data(url, force_download=True): 
    fname = url.split("/")[-1]
    if force_download or not os.path.exists(fname):
        urllib.urlretrieve(url, fname)
    return fname

def read_data(label_url, image_url):
    with gzip.open(download_data(label_url)) as flbl:
        magic, num = struct.unpack(">II", flbl.read(8))
        label = np.fromstring(flbl.read(), dtype=np.int8)
    with gzip.open(download_data(image_url), 'rb') as fimg:
        magic, num, rows, cols = struct.unpack(">IIII", fimg.read(16))
        image = np.fromstring(fimg.read(), dtype=np.uint8).reshape(len(label), rows, cols)
    return (label, image)

path='http://yann.lecun.com/exdb/mnist/'
(train_lbl, train_img) = read_data(
    path+'train-labels-idx1-ubyte.gz', path+'train-images-idx3-ubyte.gz')
(val_lbl, val_img) = read_data(
    path+'t10k-labels-idx1-ubyte.gz', path+'t10k-images-idx3-ubyte.gz')

# COMMAND ----------

# MAGIC %md We plot the first 10 images and print their labels. 

# COMMAND ----------

import matplotlib.pyplot as plt
for i in range(10):
    plt.subplot(1,10,i+1)
    plt.imshow(train_img[i], cmap='Greys_r')
    plt.axis('off')
plt.show()
display()

# COMMAND ----------

print('label: %s' % (train_lbl[0:10],))

# COMMAND ----------

# MAGIC %md Next we create data iterators for MXNet. The data iterator, which is similar the iterator, returns a batch of data in each `next()` call. A batch contains several images with its according labels. These images are stored in a 4-D matrix with shape `(batch_size, num_channels, width, height)`. For the MNIST dataset, there is only one color channel, and both width and height are 28. In addition, we often shuffle the images used for training, which accelerates the training progress.
# MAGIC 
# MAGIC **Warning**: If you run this notebook on a non-GPU machine using MXNet PyPi package `mxnet-cu80` (the GPU package), then the following cell will produce an error such as `OSError: libcudart.so.8.0: cannot open shared object file: No such file or directory`.  Make sure you use PyPi package `mxnet` with non-GPU machines and package `mxnet-cu80` with GPU machines.

# COMMAND ----------

import mxnet as mx

def to4d(img):
    return img.reshape(img.shape[0], 1, 28, 28).astype(np.float32)/255

batch_size = 100
train_iter = mx.io.NDArrayIter(to4d(train_img), train_lbl, batch_size, shuffle=True)
val_iter = mx.io.NDArrayIter(to4d(val_img), val_lbl, batch_size)

# COMMAND ----------

# MAGIC %md ### Multilayer Perceptron
# MAGIC 
# MAGIC A multilayer perceptron contains several fully-connected layers. For a fully-connected layer, assume the input matrix \\(X\\) has size \\(n\times m\\), then it outputs matrix \\(Y\\) with size \\(n\times k\\), where \\(k\\) is often called as the hidden size. This layer has two parameters, the \\(m \times k\\) weight matrix \\(W\\) and the \\(m\times 1\\) bias vector \\(b\\). It compute the outputs by
# MAGIC 
# MAGIC $$Y = W X + b.$$
# MAGIC 
# MAGIC The output of a fully-connected layer is often feed into an activation layer, which performs elemental-wise operations. The widely known function is sigmoid, which has form \\(f(x) = 1/(1+e^{-x})\\). Nowadays people also use a simpler function called relu: \\(f(x) = max(0,x)\\).  
# MAGIC 
# MAGIC The last fully-connected layer often has the hidden size equals to the number of classes in the dataset. Then we stack a softmax layer, which map the input into a probability score. Again assume the input \\(X\\) has size \\(n\times m\\), and \\(x_i\\) is the i-th row. Then the i-th row of the output is 
# MAGIC 
# MAGIC $$ \\left[\\frac{\\exp(x_{i1})}{\\sum_{j=1}^m \\exp(x_{ij})},\\ldots, \\frac{\\exp(x_{im})}{\\sum_{j=1}^m \\exp(x_{ij})}\\right] $$
# MAGIC 
# MAGIC Define the multilayer perceptron in MXNet is straightforward, which has shown as following.

# COMMAND ----------

# Create a place holder variable for the input data
data = mx.sym.Variable('data')
# Flatten the data from 4-D shape (batch_size, num_channel, width, height) 
# into 2-D (batch_size, num_channel*width*height)
data = mx.sym.Flatten(data=data)

# The first fully-connected layer
fc1  = mx.sym.FullyConnected(data=data, name='fc1', num_hidden=128)
# Apply relu to the output of the first fully-connnected layer
act1 = mx.sym.Activation(data=fc1, name='relu1', act_type="relu")

# The second fully-connected layer and the according activation function
fc2  = mx.sym.FullyConnected(data=act1, name='fc2', num_hidden = 64)
act2 = mx.sym.Activation(data=fc2, name='relu2', act_type="relu")

# The thrid fully-connected layer, note that the hidden size should be 10, which is the number of unique digits
fc3  = mx.sym.FullyConnected(data=act2, name='fc3', num_hidden=10)
# The softmax and loss layer
mlp  = mx.sym.SoftmaxOutput(data=fc3, name='softmax')

# COMMAND ----------

# MAGIC %md Now both the network definition and data iterators are ready. We can start training.
# MAGIC 
# MAGIC **Note**: This training can easily fail with the MXNet CPU version; we recommend using a GPU or a large CPU instance if needed.

# COMMAND ----------

model = mx.model.FeedForward(
    symbol = mlp,       # network structure
    num_epoch = 10,     # number of data passes for training 
    learning_rate = 0.1 # learning rate of SGD 
)
model.fit(
    X=train_iter,       # training data
    eval_data=val_iter, # validation data
    batch_end_callback = mx.callback.Speedometer(batch_size, 200) # output progress for each 200 data batches
) 

# COMMAND ----------

# MAGIC %md After training is done, we can predict a single image. 

# COMMAND ----------

plt.clf()
plt.imshow(val_img[0], cmap='Greys_r')
plt.axis('off')
plt.show()
display()

# COMMAND ----------

prob = model.predict(val_img[0:1].astype(np.float32)/255)[0]
print 'Classified as %d with probability %f' % (prob.argmax(), max(prob))

# COMMAND ----------

# MAGIC %md We can also evaluate the accuracy by given a data iterator. 

# COMMAND ----------

print 'Validation accuracy: %f%%' % (model.score(val_iter)*100,)

# COMMAND ----------

# MAGIC %md ### Convolutional Neural Networks
# MAGIC 
# MAGIC Note that the previous fully-connected layer simply reshapes the image into a vector during training. It ignores the spatial information that pixels are correlated on both horizontal and vertical dimensions. The convolutional layer aims to improve this drawback by using a more structural weight $W$. Instead of simply matrix-matrix multiplication, it uses 2-D convolution to obtain the output. 

# COMMAND ----------

# MAGIC %md <img src="https://thatindiandude.github.io/images/conv.png" style="height: 75%; width: 75%;">

# COMMAND ----------

# MAGIC %md We can also have multiple feature maps, each with their own weight matrices, to capture different features: 
# MAGIC <img src="https://thatindiandude.github.io/images/filters.png" style="height: 75%; width: 75%;">

# COMMAND ----------

# MAGIC %md Besides the convolutional layer, another major change of the convolutional neural network is the adding of pooling layers. A pooling layer reduce a $n\times m$ (often called kernal size) image patch into a single value to make the network less sensitive to the spatial location.
# MAGIC 
# MAGIC <img src="https://thatindiandude.github.io/images/pooling.png" style="height: 50%; width: 50%;">

# COMMAND ----------

data = mx.symbol.Variable('data')
# first conv layer
conv1 = mx.sym.Convolution(data=data, kernel=(5,5), num_filter=20)
tanh1 = mx.sym.Activation(data=conv1, act_type="tanh")
pool1 = mx.sym.Pooling(data=tanh1, pool_type="max", kernel=(2,2), stride=(2,2))
# second conv layer
conv2 = mx.sym.Convolution(data=pool1, kernel=(5,5), num_filter=50)
tanh2 = mx.sym.Activation(data=conv2, act_type="tanh")
pool2 = mx.sym.Pooling(data=tanh2, pool_type="max", kernel=(2,2), stride=(2,2))
# first fullc layer
flatten = mx.sym.Flatten(data=pool2)
fc1 = mx.symbol.FullyConnected(data=flatten, num_hidden=500)
tanh3 = mx.sym.Activation(data=fc1, act_type="tanh")
# second fullc
fc2 = mx.sym.FullyConnected(data=tanh3, num_hidden=10)
# softmax loss
lenet = mx.sym.SoftmaxOutput(data=fc2, name='softmax')

# COMMAND ----------

# MAGIC %md Note that LeNet is more complex than the previous multilayer perceptron, so we use GPU instead of CPU for training.
# MAGIC 
# MAGIC **Warning**: If you use the MXNet PyPi package `mxnet` on a GPU machine, then the following cell may produce an error such as:
# MAGIC `src/c_api/c_api_ndarray.cc:270: Operator _zeros cannot be run; requires at least one of FCompute<xpu>, NDArrayFunction, FCreateOperator be registered`.
# MAGIC Make sure you use PyPi package `mxnet` with non-GPU machines and package `mxnet-cu80` with GPU machines.
# MAGIC 
# MAGIC **Note**: This training can easily fail with the MXNet CPU version; we recommend using a GPU or a large CPU instance if needed.

# COMMAND ----------

model = mx.model.FeedForward(
    ctx = mx.cpu(0),     # use GPU 0 for training, others are same as before
    symbol = lenet,       
    num_epoch = 10,     
    learning_rate = 0.1)
model.fit(
    X=train_iter,  
    eval_data=val_iter, 
    batch_end_callback = mx.callback.Speedometer(batch_size, 200)
) 

# COMMAND ----------

print 'Validation accuracy: %f%%' % (model.score(val_iter)*100,)

# COMMAND ----------

# MAGIC %md Note that, with the same hyper-parameters, LeNet achieves 98.9% validation accuracy, which improves on the previous multilayer perceptron accuracy of 96.7%.
