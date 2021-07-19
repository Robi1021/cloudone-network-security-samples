# quickstart-network-security-edge-deployment
## Network Security Edge Deployment in WordPress High Availability DVWA environment on AWS Cloud

Note: This Quick Start is an adaptation of original [Wordpress High Availability By Bitnami](https://github.com/aws-quickstart/quickstart-bitnami-wordpress). The original quickstart has been modified to include DVWA instance in the deployment. 

This Quick Start deploys WordPress High Availability by Bitnami, which includes WordPress and Amazon Aurora, in a highly available environment on AWS in about 40 minutes. It also deploys Damn Vulnerable Web Application (DVWA) in one of the public subnets. The purpose of this quickstart is to provide users a sample environment where they can deploy Network Security Virtual Appliance to protect their resources including web servers and databases etc.

After deploying this Quick Start, you will be able to:

- Deploy Network Security Virtual Appliance (NSVA) as an [Edge Protection](https://cloudone.trendmicro.com/docs/network-security/option1/)
- Configure your security profile in Cloud One Network Security console by distributing various Intrustion Prevention (IPS), Geo Filters to prevent your resources from inbound and outbound attack.
- Perform various inbound and outbound attacks to validate protection.
- Access logs of Network Security Virtual Applicance (NSVA) to verify which filters are getting triggered.

## Deployment Steps

The Quick Start offers two deployment options:

- Deploying WordPress High Availability by Bitnami and DVWA into a new virtual private cloud (VPC) on AWS
- Deploying WordPress High Availability by Bitnami and DVWA into an existing VPC on AWS

You can also use the AWS CloudFormation templates as a starting point for your own implementation.

![Quick Start architecture for WordPress High Availability by Bitnami on AWS](https://d0.awsstatic.com/partner-network/QuickStart/datasheets/bitnami-wordpress-on-aws-architecture.png)

For architectural details, best practices, step-by-step instructions, and customization options, see the 
[deployment guide](https://fwd.aws/arqWN).