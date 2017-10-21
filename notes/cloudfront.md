# Cloud Front CDN

- Uses DNS to geo-location to route request to nearest location (edge location)
# How it Works
    - Edge location receive request (HTTP or HTTPS)
    - If has cached object for that path/query returns it
    - If not get the object from origin and stores it in the Edge location for default of 24 hours or details specified in Cache-Control header in response

- Can be used to stream audio/video through http and RTMP

- You can have multiple origins for single 
# Components
    ## Distributions
        - endpoint
        - creates domain
        - you can map your site to it using CNAME
    ## Origins 
        Source of the data
            - S3 bucket
            - EC2 
            - ELB
            - URL
        - One distribution can have multiple origins, see cache behaviour
    ## Cache Control
        - By default 24 hours
        - Can be changed using Cache-Control header from the response
        - Can be overriden by setting fixed cache time
        - Can be invalidated using API. Invalidatation is forgetting all cached content
        - use versioning:
            - /api/v1/something
            - /api/v2/something
    ## Cache Behaviours
        - Allow to have different cache origins and policies for different content
        - Configuration
            - Path pattern (*.jpg, *.aspx)
            - Origin
            - Query string forward (boolean)
            - Signed URL needed or not
            - Https required
            - TTL (ignore Cache-Control header)
        - you should have default (*) cache behaviour
        - cache behaviours are applied in order, first matching is used.
## Private Content
    - Signed URLs - time restricted url, might also be IP restricted
    - Signed Cookie
    - Origin Access Identity - you can secure bucket to allow access only from CloudFront

