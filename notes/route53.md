# Route53 Authoritative DNS system

Authoritative DNS is the original source of DNS records for a domain. Allow you to set for example TTLs

## TLD
    - .com
    - .net etc

---- FQDN -------
api.aws.amazon.com
host---- SLD--- TLD
---- subdomain----

FQDN - fully qualified domain name

## Record Types

    ### SOA (Start of Authority)
        - mandatory for a zone. Basic dns information like dns server for that zone, current version of data file. Default TTL

    ### A and AAAA
        - IP v4 and v6 (AAAA) maps host to IP address

    ### CNAME 
        - Alias, can't be used for zone apex (naked domain). Points to another FQDN
    ### MX
        - mail servers
    ### NS
        - name servers which contain authoratitative records
    ### PTR
        - Pointer is oposite of A. Used for Reverse DNS
    ### SPF
        - Authorized IP addresses for sending mail. Spam protection
    ### Text
        - Any text
    ### Servcie (SRV)
        - strange record for service discovery like HTTP server with protocol [TCP]

## Functions

    ### Domain registration
    ### DNS service
    ### Health Check
        - Protocol (HTTPS, HTTP, TCP)
        - Port
        - IP Address
        - You can use CloudWatch for alarms


## Components
    ### Hosted zone
        Collection on record sets. Think domain (zone apex)
        - Zone can be public or private
        - Private zone can be visible within VPC
    ### Record set
        Has records for domain/subdomains with the same suffix
    ###  Routing Policies
        - Simple
            Single endpoint not balancing
        - Weighted
            You can send portion of the traffic to different domains
        - Latency based
            Request is routed to the endpoint with lowest latency
        - Geolocation
            Requests are routed based on location
                - You can have hierachy of policies e.g.: 
                    - All trafic from Europe to Frankfurt
                    - All trafic from UK to Dublin
                Smalles region always takes precedence
                - You should create default policy for unrecognized ip addresses to avoid No Answer
        - Failover 
            When endpoint fails traffic is routed to other endpoint. Can't be created for private zone

