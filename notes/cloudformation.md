# Cloud Formation

Infrastracture as a code

Templates and stacks

Template contains:
1. An optional list of template parameters (input values supplied at stack creation time)
2. An optional list of output values (e.g. the complete URL to a web application)
3. An optional list of data tables used to lookup static configuration values (e.g., AMI names)
4. The list of AWS resources and their configuration values
5. A template file format version number

You can specify logical names to resources ( Actual resource names are a combination of the stack and logical resource name. )

- Supports tagging
- Supports Bootstraping scripts

After stack is created from the template you can update it.
When you try to update it it will show you list of change set. You can execute it.