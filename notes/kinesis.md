# Kinesis

- Think Kafka

## Kinesis Streams - keyword: process
    - barebone kinesis, works more or less like kafka
    - Smallest unit - shard (think Kafka partition)
    - You code publishers and consumers
    - You can increase capacity via ReSharding

## Kinesis Firehose - keeword: store
    - Ingestion mechanism
    - No code required
    - Main destination S3
        - Can copy to RedShift
        - Can also populaste ElasticSearch

## Kinesis Analytics
    - You specify SQL query on your ingested data
    - Then point it to where to store data
        - Kinesis Stream
        - Kinesis Firehose (and to s3)

DO NOT use for ETL and batch processing - use Data Pipeline