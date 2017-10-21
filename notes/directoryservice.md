# Directory Services

Active Directory on AWS

#Available Integrations
    ## AWS Directory Services for Microsoft Active Directory
        - Full MS Active Directory
        - use when more that 5000 users
        - fully futured
        - can set up trust relationships with existing domains

    ## Simple AD
        Simple service MS AD compatible
        - uses Samba 4
        - can be used to Aws Workspaces, WorkDocs, WorkMail
        - can be integrated with IAM and Management Console
        - backed up with daily snapshots
        - can't setup trust relationship
        - does not support LDAP, MFA and many more
        - use when less than 5000 users
    
    ## AD Connector
        Proxy service to your on prem Active Directory
        - just a connector
        - can be used to Aws Workspaces, WorkDocs, WorkMail
        - can be integrated with IAM and Management Console
        - supports MFA (through Radius)
        - use when you want to manage users on prem 