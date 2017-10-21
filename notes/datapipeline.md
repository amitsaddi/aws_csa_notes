# AWS Data Pipeline

ETL process for AWS

# Componets
    - Pipeline Definition  
        - Specifies the tasks
        - Set Schedule (every 15 min, day, week etc)
    - Task (Activities)
        - Move data from one place to another
        - If additional resources needed Data Pipeline will create them and tear down once finished
    - Preconditions
        - Checks before starts pipeline
        - E.g
            - S3 key exists
            - DynamoDB table not empty

