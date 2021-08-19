# east-west-deployment

## Network Architecture

<img src="docs/east-west.png" name="Network Security East West Deployment">

## Deployment Steps

*Note: You can deploy this Quick Start using the default S3 template link below if you don't wish to make changes to this code and deploy with your own customized changes:*

`https://quickstart-ns-edge-deployment.s3.us-west-1.amazonaws.com/east-west-deployment/templates/main.yaml`
### 1. Deploy Network Security with Centralized Security VPC
The Quick Start deploys Security VPC for East West Outbound Only inspection in multiple AZs using Transit Gateways. Users are expected to deploy to attacker and victim VPCs manually (instructions are given below)

Following are pre-requisites that must be fulfilled before you could deploy the Quick Start:
- Create a new SSH key pair in the AWS region you will be deploying the Quick Start
- [Generate a CloudOne API Key](https://cloudone.trendmicro.com/docs/network-security/add_cloud_accounts_appliances/#generate-an-api-key)

Below are the parameters for Quick Start:
#### Quick Start Parameters

##### Required parameters
| Parameter label (name) | Default        | Description                                                    |
| :----------------------| :------------- | :------------------------------------------------------------- |
| IpsInstanceType    | c5n.4xlarge  | AWS EC2 IPS instance type |
| KeyPairName | None | SSH Key to access instances |
| VpcCidr    | 10.0.0.0/24 | CIDR for the Security VPC. Each Availability Zone uses a /25 CIDR |
| ApiKey    | None  Availability Zones to use. Each uses a /25 subnet of the VPC |
| AvailabilityZones  | None | Availability Zones to use. Each uses a /25 subnet of the VPC |
| NumAvailabilityZones    | 2 | Number of Availability Zones chosen - to help with CloudFormation. Each uses a /25 CIDR and an Elastic IP |
| QSS3BucketName    | quickstart-ns-edge-deployment | S3 bucket name for the Quick Start assets |
| QSS3KeyPrefix    | east-west/ | S3 key prefix for the Quick Start assets |