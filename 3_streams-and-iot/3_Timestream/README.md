# Amazon Timestream

The Timestream service on the AWS console includes a number of video tutorials. An example of timestream data storage objects is shown the diagram below (from AWS documentation). 
- Data can be stored into flexible, scalable NoSQL tables as `single-measure` or `multi-measure` records.  The storage type affects storage cost, query syntax and query performance
- Data is stored by time-based retention periods into memory (hrs/days/wks/mos) or magnetic (days/wks/mos/yrs) storage, as with storage structure, storage location affects cost and query performance.  
  - Enable `EnableMagneticStoreWrites` for Timestream tables if you expect late arrival data to occasionally arrive with timestamps **earlier** than the memory store retention
  - If `EnableMagneticStoreWrites` in the `MagneticStoreWritesProperties` for a table is checked, then that table will accept data with timestamp earlier than your configured memory store retention period
- Listed below is info about modeling input data as 'multi-measure records' from the AWS documentation - [link](https://docs.aws.amazon.com/timestream/latest/developerguide/writes.html)

<img src="https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/timestream-objects.png" width=800>

## Multi-measure records
Using multi-measure records, you can store your time-series data in a more compact format in the memory and magnetic store, which helps lower data storage costs. Also, the compact data storage lends itself to writing simpler queries for data retrieval, improves query performance, and lowers the cost of queries. 
- See best practices for data modeling - [link](https://docs.aws.amazon.com/timestream/latest/developerguide/data-modeling.html)

Also multi-measure records support the `TIMESTAMP` data type for storing more than one timestamp in a time-series record. This timestamp is independent of the memory store retention period and can support values in the past, present, or future. Multi-measure records therefore help improve performance, cost, and query simplicity—and offer more flexibility for storing different types of correlated measures.

### Benefits

The following are the benefits of using multi-measure records:

- **Performance and cost** – Multi-measure records enable you to write multiple time-series measures in a single write request. This increases the write throughput and also reduces the cost of writes. With multi-measure records, you can store data in a more compact manner, which helps lower the data storage costs. The compact data storage of multi-measure records results in less data being processed by queries. This is designed to improve the overall query performance and help lower the query cost.
- **Query simplicity** – With multi-measure records, you don’t need to write complex common table expressions (CTEs) in a query to read multiple measures with the same timestamp. This is because the measures are stored as columns in a single table row. Multi-measure records therefore enable writing simpler queries.
- **Data modeling flexibility** – Multi-measure records simplify migrating data from existing relational databases to Timestream. Multi-measure records also support additional data types such as TIMESTAMP. This is independent of the measure store retention window, and therefore enables you to store data from the past, present, or future.

## Time Series Functionality

<img src="https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/functions.png" width=300 align=left>

- Timestream includs several built-in extentions to SQL for time-based queries.  For example, `CREATE_TIME_SERIES` is an aggregation function that takes all the raw measurements of a time series (time and measure values) and returns a timeseries data type - [link](https://docs.aws.amazon.com/timestream/latest/developerguide/timeseries-specific-constructs.views.html).
- Also there are a set of time-based functions (shown in the graphic to the left) - [link](https://docs.aws.amazon.com/timestream/latest/developerguide/timeseries-specific-constructs.functions.html)
- Links to example time series queries - [link](https://docs.aws.amazon.com/timestream/latest/developerguide/sample-queries.devops-scenarios.html)

---

## Links and Tools

- @Werner blog post on 'Time Series is the New Black' - [link]( https://www.allthingsdistributed.com/2021/06/amazon-timestream-time-series-is-the-new-black.html)
- Timestream architecture - [link](https://docs.aws.amazon.com/timestream/latest/developerguide/architecture.html)
- Open source Timestream libraries and tools - [link](https://github.com/awslabs/amazon-timestream-tools)
- Timestream table visualizer - [link](https://github.com/aws-samples/amazon-timestream-simple-visualizer)


