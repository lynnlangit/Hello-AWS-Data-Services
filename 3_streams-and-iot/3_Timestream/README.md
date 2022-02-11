# Amazon Timestream

The Timestream service on the AWS console includes a number of video tutorials (see screenshot below). Timestream objects are shown the diagram below (from AWS documentation).  Listed below is info about modeling input data as 'multi-measure records' from the AWS documentation - [link](https://docs.aws.amazon.com/timestream/latest/developerguide/writes.html)

<img src="https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/timestream-objects.png" width=800>

## Multi-measure records
With multi-measure records, you can store your time-series data in a more compact format in the memory and magnetic store, which helps lower data storage costs. Also, the compact data storage lends itself to writing simpler queries for data retrieval, improves query performance, and lowers the cost of queries.

Furthermore, multi-measure records also support the TIMESTAMP data type for storing more than one timestamp in a time-series record. This timestamp is independent of the memory store retention period and can support values in the past, present, or future. Multi-measure records therefore help improve performance, cost, and query simplicity—and offer more flexibility for storing different types of correlated measures.

### Benefits

The following are the benefits of using multi-measure records:

- **Performance and cost** – Multi-measure records enable you to write multiple time-series measures in a single write request. This increases the write throughput and also reduces the cost of writes. With multi-measure records, you can store data in a more compact manner, which helps lower the data storage costs. The compact data storage of multi-measure records results in less data being processed by queries. This is designed to improve the overall query performance and help lower the query cost.
- **Query simplicity** – With multi-measure records, you don’t need to write complex common table expressions (CTEs) in a query to read multiple measures with the same timestamp. This is because the measures are stored as columns in a single table row. Multi-measure records therefore enable writing simpler queries.
- **Data modeling flexibility** – Multi-measure records simplify migrating data from existing relational databases to Timestream. Multi-measure records also support additional data types such as TIMESTAMP. This is independent of the measure store retention window, and therefore enables you to store data from the past, present, or future.


## Key Links
- @Werner blog post on 'Time Series is the New Black' at https://www.allthingsdistributed.com/2021/06/amazon-timestream-time-series-is-the-new-black.html
- Timestream architecture at https://docs.aws.amazon.com/timestream/latest/developerguide/architecture.html
- Open source Timestream tools at https://github.com/awslabs/amazon-timestream-tools

<img src="https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/timestream-tutorials.png" width=800>
