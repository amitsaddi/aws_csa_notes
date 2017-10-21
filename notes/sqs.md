# Simple Queue Service

## Message Lifecycle
    - Send message - returns back Id
    - Receive message - VisibilityTimeout Starts
    - Delete message, using delete handle within VisibilityTimeout
    - If not deleted, message will be visible to other consumers after VisibilityTimeout

 ## Delay queues
    - You can specify delay on a queue
    - message will be visible after delay timeout
    - You can also specify DelaySeconds on message
    - from 0 to 15 minutes (900 sec)

## Dead letter Queues
    - You should use them for messages which consumer is not able to process

## Limits
    - max 120 000 messages in flight
    - mas size 256kb (billed for every 64kb)

## Security
    - You an use SQS Access Control to grant access to other accounts (like S3 Bucket Policy)