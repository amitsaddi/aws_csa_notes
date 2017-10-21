# KMS and CloudHSM module

# KMS Key Management Service - regional
    - Stores symetric keys
    - Stores CMK (Customer Managed Keys)
    - Can decrypt upto 4kb of data
    - CMK never leaves KMS module unencrypted
    - Data keys are used to encrypt data
        - Call KMS to create datakey
        - KMS return key and encrypted key with CMK

## CloudHSM
    - Hardware Module
    - Tamper resistant
    - Low latency and High Performance
    - Should be deployed in redunant pair
    - Should ahve offsite backup.