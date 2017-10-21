# ElasticBeanstalk

Quick deployment of applications.
Provisions all of the infrastructure for you and sets all the settings (ELB, logs, CloudWatch etc)

# Moving parts
- Application
    - folder with application
- Application version
    - S3 saved package
- Environment
    - Unit of deployment
    - Environment runs single version of the code
- Environment Configuration
