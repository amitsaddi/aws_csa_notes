# AWS Storage Gateway

- It's VM you can install on prem or on EC2
- It's available as iSCSI device that can be mouted on prem

## Gateway Cached
    - Only most freaquent data available on prem the rest in S3
    - Supports up to 32 volumes of 32 TB (1PB)
    - You can create Point in Time Snapshots - incremental
    - Encrypted by default with SSE and SSL
    - Stored in S3, you can't access it through S3 API

## Gateway Stored
    - All data on-prem with async backup to cloud (S3)
    - The data is backed up in the form of EBS snapshots
    - Max 32 volumes of 16 TB each - 512TB
    - You can create new EBS volume from your Gateway-Stored volume
    - Encrypted at rest with SSE
    - Can't be accessed through S3 api

## VTL
    - Supports up 1500 Virtual Tapes (1TB)
    - Data is stored in VTS (Virtual Tape Shelf)
    - One VTS per AWS region, multiple gateways can share same VTS