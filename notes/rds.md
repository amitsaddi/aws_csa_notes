# RDS Relational Database Service

RDS is PARTIALLY MANAGED service, Dynamo is FULLY MANAGED Service
RDS can have public IP Address and be access from the internet.
When deplying to VPC - VPC must have at least one subnet in at least 2 AZ

## Supported Engines
    - MySQL
    - Postgres
    - MariaDB
    - Oracle
    - SQL Server
    - Aurora (AWS MySQL)


## Db Instance
    - Should be accessed by DNS (CNAME)
    ### Parameter Group
        Database Engine configuration (cotainer)
        You can change parameters of all instances at once by modifying the Parameter Group
    ### Option Group
        Some DB engines offer additional features that make it easier to manage data and databases, and to provide additional security for your database. Amazon RDS uses option groups to enable and configure these features. An option group can specify features, called options, that are available for a particular Amazon RDS DB instance
    ### Subnet Group
        A DB Subnet Group is a collection of subnets that you may want to designate for your RDS DB Instances in a VPC. Each DB Subnet Group should have at least one subnet for every Availability Zone in a given Region. When creating a DB Instance in VPC, you will need to select a DB Subnet Group

## Multi AZ Deployment
    - All Databse engines support Mulit-AZ (licence for Enterprise for SQL)
    - Synchronous replication between two AZ
    - Primary/StandBy mode
    - no performance gains
    - Snapshots taken from StandBy
    - Less time needed for updates during maintenance window
    - Use DNS name, automatic flip when primary fails
    - Higher latency than Single AZ deployment
    - Single AZ can be converted to Multi AZ

## Read Replica
    - Supported engines:
        - MySQL
        - Aurora
        - PostgesSQL
        - MariaDB
    - Asynchronous read only replica
    - Can allow creating custom indexes (MySQL only)
    - Automatic Backup has to ENABLED to create Read Replica
    - You can create Read Replica from Read Replica for Aurora, MySQL and MariaDB

## Maintenance Window
    - 30 minutes 
    - Automatic backups are taken within the window

## Importing Data
    - Database Migration Service

## Encryption  
    - Can only be enabled when DB Instance is created
    - You can encrypt db by using Snapshot, copying it and restoring
    - Unencrypted Snapshot can't be restored to encrypted db
    - Encryption can't be disabled
    - Read Replicas encrypted with same key as Source Instance
    - When coping encrypted snapshot to different region you have to specify KMS key. KMS keys are regional.

## Security
- Amazon RDS uses VPC security groups only for DB instances launched by recently created AWS accounts. In simple terms, DB security groups only apply to instances used outside of a VPC, which could not apply to any recently created AWS accounts. Let's disqualify that as a security group option. The EC2 security group also applies to only EC2-Classic instances, so let's rule out that option as well. EC2 instances are not available to AWS accounts created in the last several years. 
- All engines support SSL connections

    