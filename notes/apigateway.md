## API Gateway


- Stages (versions)

- Uses CloudFront in the background
- api invoke => IAM permission to run the api path call
- When you grant "apigateway:GET" action, user wil be able to list resources, methods, models and stages
- Use CORS for cross domian 
- You can use API Gateway to generate an SSL certificate and use its public key in the backend to verify that HTTP requests to your backend system are from API Gateway. This allows your HTTP backend to control and accept only requests originating from Amazon API Gateway, even if the backend is publicly accessible.
- If you use Lambda, user has to have permission to invoke lambda
- 429 HTTP CODE - throttling error
- Free tier does not support API Caching
- /sping and /ping is reserved path for API Gateway
- You can pass variables to lambda using stage variables
- Use AWS Service Proxy to forward requests to S3, Kinesis and Lambda
- Integrated with Cognito
- API has to be deployed to be publicly available