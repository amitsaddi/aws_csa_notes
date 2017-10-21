# Ops Work

Chef for AWS

Moving parts:
    - Stack - group of resources (whole app ecosystem, balancers, web servers, db's etc)
    - Layer - element fo the stack (e.g. load ballancers )
    - Recipe - layers depend on them to handle tasks such us instaling package on instances
    - Instance - single computing resource
    - App - application (S3 or Git) which specifies the type and how to depoy it

AWS OpsWorks add resource metrics to CloudWatch with custom metrics like:
    - CPU idle,
    - memor total, 
    - average load,

Supports Continous Integration