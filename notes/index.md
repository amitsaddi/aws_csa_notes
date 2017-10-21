

- EC2✅
    - Instance Store ✅
    - AMI ✅
    - EBS
        - Volumes ✅
        - Snapshots ✅
        - Encryption ✅
    - Network & Security
        - Network Interface ✅
        - Placement Group ✅
        - Security Groups ✅
        - Elastic IP ✅
        - Enhanced networking ✅
    
    - ELB✅
        - ASG ✅
            - Health Check✅
            - Launch Configuration✅
        - Target Group ?✅
        - Health Check✅

VPC✅
    - Internet Gateway (+ Egress Only)✅
    - Route Table✅
    - Subnets✅
    - NACL✅
    - Security Groups✅
    - VPC Peering✅
    - NAT Instance/Gateway✅
    - Endopoints (S3 & DYNAMODB)✅
    - VPN Connection✅

S3 - Simple Storage Service✅
    - Buckets✅
    - Storage Classes✅
    - Cross Region Replication✅
    - Static Websites Hosting✅
    - Lifecycle Policies (IA, Glacier)✅
    - Versioning✅
    - Transfer Acceleration✅
    - Metadata✅
    - MultiPart Upload✅
    - read-after-write consistency for puts new objects, eventual for puts & deletes✅

Storage Gateway✅
    - Modes✅
        Storage (on-prem main, s3 backup)✅
        Cache (only frequently used)✅
        VTL (?)✅
    - Backed by S3✅
    - Just an image, can be installed on Vmware eSXI✅

Glacier ✅
    - Encryption✅
    - Retrieval time (3-5h)✅
    - Vaults

EFS✅
    - NFSv4✅
    - Can be shared✅
    - Region✅

RDS✅
    - Databses:✅
        MySQL:✅
            InnoDB ✅
            MySam (can't be used for mulit AZ ?(double check))
        Postgres✅
        Aurora✅
        MariaDB✅
        Oracle✅
        SQL Server✅
    - Multi AZ ✅
    - Read Replica ✅
    - Maintenance window ✅
    - Parameter Group✅
    - Autmomatic Backup✅
    - Snapshots✅
    - Point in Time recovery✅
    - Subnet Group?✅
    - Option Group?✅

DynamoDB
    - hash key & parition key✅
    - low latency✅
    - by default evenentually consistent reads✅
    - can do consistent reads (more expensive)✅
    - auto scaling✅
    - up to 400kb of data per key✅
    - Cross region replication✅
    - Dynamo streams✅
    - Provisioned Capacity✅
    - Acceleration ?✅
    - Encryption✅

ElastiCache✅
    - Memcached & Redis✅
    - Low latency✅

Redshift✅
    - SQL at peta byte scale✅
    - Warehouse✅
    - Columnar storage✅
    - 1MB blocks✅

Route53✅
    - DNS service✅
    - Hosted Zones (domains?)✅
        - Record Set✅
    - All Dns Records✅
    - Alias records for A and CNAME✅
        - targets:✅
            - ELB✅
            - S3✅
            - CloudFront✅
    - Modes✅
        - simple✅
        - weighted✅
        - latency✅
        - failover✅
        - geolocation✅
    - Health Checks✅

CloudFront✅
    - Edge Locations✅
    - Caches contents based on TTL✅
    - Supported Sources✅
        - web server (URL) (EC2, ELB & on-prem)✅
        - S3 bucket✅
    - Origin Access Identity for restricting access ✅

DirectConnect 
    - direct line from on-prem
    - terminates in VPC? how?
    - using VLAN protocol? 

Snowball✅
    - new version Edge✅
    - box you can upload your data to and mail it✅
    - Supported Destinations?✅
    - Can you export?✅

ElasticBean Stack ✅
    - Deploys your app to EC2 (zip file)✅
    - Creates load ballancers ASG etc✅

Lambda
    - Event Driven
    - Can repond to triggers
    - Supported Triggers:
        - HTTP from API Gateway
        - SQS
        - SNS
        -??? 
    - Needs warm up
    - Pay per execution
    - Memory/CPU balance to increase performance
    - AutoScaling
    - Supported Languages:
        - JAVA
        - Python
        - Nodejs
    How Security Works?

EMR (Elastic Map Reduce)✅
    - Supported Engines✅
        - Hadoop✅
        - Spark✅
        - Hbase✅

ECS (Elactic Container Service)
    - Tasks
    - Allows you to run container on your cluster of EC2 instance
    - Requires agent installed
    - How security works?

CloudWatch
    - Monitoring
    - Can collect custom metrics via intalled agent/script
    - You can specify Alerts
    - Alerts targets:
        - SNS
        - Email?
        - ??
    - Logs
        - how it works

CloudFormation
    - Infrastracture as a code
    - You can script whole infrastructure through it
    - JAML or Json

CloudTrail✅
    - Audit of all API calls to amazon✅
    - Events✅
    - Trails? what's that✅
    - Cross region? - yes✅

OpsWorks? What's that?✅

IAM✅
    - Users✅
    - Roles✅
    - Policies✅
    - Groups✅
    - keys (KMS)✅
    - Identiti Providers? What's that?✅
    - Password Policy✅

WAF
    - Web Application Firewall
    - what it does?
    - cost?

Directory Service✅
    - what's that? Types?✅

Config
    - what's that?

CloudHSM✅
    - Hardware Security Module✅
    - Key Store✅
    - Physical Appliance✅

Kinesis✅
    - Retention✅
    - Multi Consumer✅
    - 1000 puts/s 1MB/s per shard✅
    Types:✅
        - Streams (kind of like KAFKA)✅
            - Shards✅
            - Resharding✅
            - Capacity per shard✅
        - Firehose✅
            - what's that?✅
        - Analytics✅
            - SQL on the stream?✅

Data Pipeline  ✅
    - Moves data from one place to another? ✅

AWS Glue
    what's that?

Step Functions
    - what's that

SWF - Simple Workflow Services✅
    - distribution coordination framework, kind of like biz talk✅
    - Deciders✅
    - Workers✅
    - Triggers✅
    - exactly once processing✅
    - can use both on-prem and aws as well as human input✅

API Gateway 
    - Can connect to lambda
    - how it works?
    - moving parts?

ElasticTranscoder
    - Transcodes videos to different format
    - has presents
    - pay per minute

SQS✅
    - small messages (up to 256 kb)✅
    - max retention x days✅
    - Visibility Timeout✅
    - AutoScaling✅
    - Long Polling✅
    - By default at least once✅
    - Supports FIFO (not default)✅
    - FIFO has exactly once✅

SNS✅
    - Fan out✅
    - Multiple destinations✅
        - SQS✅
        - Lambda✅
        - ???✅
        - Email✅

SES
    - Simple email service
    - how it works?

