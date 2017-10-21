# SNS Simple Notification Service

Messaging platform.
## Model
    - Publishers
    - Consumers
        - Lambda
        - SQS
        - HTTPS
        - Email
        - SMS
    - Topic
        Logical access point that contains list of subscribers. It pushes messagses to consumers 
Publishers communicate with consumers asynchronously via topics.

- Used for FanOut

- If endpoint is unavailable you can specify Retry policies, backoff, max retry etc. For extra reliability SQS should be used.

## Limits
    - mas size 256kb, excluding SMS (lower)
