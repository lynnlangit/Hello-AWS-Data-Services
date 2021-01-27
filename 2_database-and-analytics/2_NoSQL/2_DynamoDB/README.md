# DynamoDB

Amazon DynamoDB is a fully managed proprietary NoSQL database service that supports key-value and document data structures. DynamoDB has a multi-leader design requiring the client to resolve version conflicts and it uses synchronous replication across multiple data centers for high durability and availability. Example table structure shown below.

<img src="https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/dynamodb-tables.png" width=800>

## More Info

- Core components - https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.CoreComponents.html
- SQL or NoSQL (or 'why DynamoDB?') - https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/SQLtoNoSQL.WhyDynamoDB.html
- Wikipedia entry - https://en.wikipedia.org/wiki/Amazon_DynamoDB
- Architecture - https://medium.com/swlh/architecture-of-amazons-dynamodb-and-why-its-performance-is-so-high-31d4274c3129
- Technical Details / AWS Deck - https://www.pinterest.com/pin/326511041717979372/

---

## About DynamoDB Indexing

(from AWS Documentation)  "Amazon DynamoDB supports two types of secondary indexes:

**Global secondary index**—An index with a partition key and a sort key that can be different from those on the base table. A global secondary index is considered "global" because queries on the index can span all of the data in the base table, across all partitions. A global secondary index has no size limitations and has its own provisioned throughput settings for read and write activity that are separate from those of the table.

**Local secondary index**—An index that has the same partition key as the base table, but a different sort key. A local secondary index is "local" in the sense that every partition of a local secondary index is scoped to a base table partition that has the same partition key value. As a result, the total size of indexed items for any one partition key value can't exceed 10 GB. Also, a local secondary index shares provisioned throughput settings for read and write activity with the table it is indexing.

Each table in DynamoDB can have up to 20 global secondary indexes (default quota) and 5 local secondary indexes."
