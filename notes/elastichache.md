# ElastiCache

## Engines
    Memcached
        - AutoDiscovery of nodes, no need for endpoints
        - You can partition data up to 20 nodes
        - Always starts empty
    Redis
        - Supports complex queries (ordering )
        - Single write node
        - Single node cluster
        - Up to 5 read replicas (replication group)
        - Can be initialized from a backup
        - Supports Backups and recovery
        - You can create manual snapshots

## Multi AZ
    - uses DNS to failover
    - Replication is asynchronous

## Security
    - Use Security Groups and NACL to controll access
    - When deployed to VPC cannot be visibible outside (Internet) and have only private IP