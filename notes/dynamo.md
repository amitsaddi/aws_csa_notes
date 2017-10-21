# Dynamo DB

## Data Model
    ### Table
        - Collection of data items
        - Infinite
        - Schema less

    ### Item
        - Key 
            - Primary Key
            - Partition Key & Sort Key
        - No Limit on number of Attributes
        - Max size 400kb

    ### Attribute
        - Attribute name and value
        - Value can be single value or set

## Operations
    - CRUD Table
    - PutItem - create or update single record
    - BatchWriteItem - batch insert, replace, delete - NOT ATOMIC, up to 25 items, max 16 MB
    - GetItem - Eventually consistent by default, can be strongly consitent
    - Query - filters on a primary key or a secondary index, more efficient than Scan,can be strongly consitent
    - Scan - performs full scan,can be strongly consitent

## Scaling
    - Throughput
        - Read and Write capacity
        - Table level
        - One partition 
            - 3000 Read Capacity Units
            - 1000 Write Capacity Units
        - Capacity units are equally distributed over partitions
        - Burst capacity
    - Size
        - 10GB per partition

## Best Practices
    - Partition Keys with large number of distinct values
    - Bucketing (like Hbase hot keys), predefined number. Sharding for writes.
    - TimeSeries - Hot/Warm tables, tables by month,
    - Cache hot read keys, you can use lambda to update lambda

## DynamoDB Streams
    - Time Ordered sequence of database changes 
    - Change log
    - Durable Queue
    - Kinesis Stream
    - Max 24 hour retention
    - Can be used to trigger lambda
    - Can be enabled or disabled at any time

## Secondary Indexes
    - Global Seconday Index:
         - new partition and sort key
         - can be deleted at any time 
         - eventually consistent
         - you can have multiple Global Secondary Indexes
         - have separate write capacity unit from main table
    - Local secondary index 
        - same partition key, different sort key
        - can only be created when you create a table
        - eventually consistent
        - consumes table capacity units
        - can be more than one

## Encryption
    - No AWS provided mechanism
    - Only client side encryption