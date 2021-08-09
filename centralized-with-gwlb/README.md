# centralized-deployment-with-gwlb

## Network Architecture

<img src="docs/centralized-with-gwlb.png" name="Network Security Centralized with Gateway Load Balancer Deployment">

## Deployment Steps

*Note: You can deploy this Quick Start using the default S3 template link below if you don't wish to make changes to this code and deploy with your own customized changes:*

`https://quickstart-ns-edge-deployment.s3.us-west-1.amazonaws.com/centralized-with-gwlb/Master.yaml`
### 1. Deploy Cloud One Network Security with Centralized Security VPC
The Quick Start offers two deployment options:

- Deploying Cloud One Network Security with centralized security VPC without High Availability
- Deploying Cloud One Network Security with centralized security VPC with High Availability

Before proceeding to deploy the Quick Start, please create a new SSH key pair in the AWS region you will be deploying the Quick Start to.

Below are the parameters for Quick Start:
#### Quick Start Parameters

| Parameter label (name) | Default        | Description                                                    |
| :----------------------| :------------- | :------------------------------------------------------------- |
| AllowIP    | 127.0.0.1/32   | Only the IP entered here will be able to access the web server |
| BucketName | quickstart-ns-edge-deployment   | Name of the bucket where the template is placed |
| BucketPrefix    | centralized-with-gwlb/ | Bucket prefix |
| BucketRegion    | us-west-1| Bucket region |
| SSMAccess    | true | If enabled, SSM access to the instance will be available |
| DeployHTTPS    | false | If enabled, The HTTPS site will be deployed |
| DeployC1NS    | true | If enabled, C1NS with be deployed in centralized Security VPC |
| DeployC1NSHA    | false | [KEEP IT to 'false', DOESN'T WORK CURRENTLY] If enabled, C1NS will be deployed in centralized Security VPC |
| DeploySplunk    | false | [Required: 'DeployC1NS' must be set to true] If enabled, Splunk Server will be deployed |
| DomainName    | nonymass-nemo.uk | [Required: 'DeployHTTPS' must be set to true] Domain name to be used for the website |
| SubDomain    | '' | [Required: 'DeployHTTPS' must be set to true] Subdomain to be used for the ALB. |
| HostZoneID    | Z085817336XNWEPQIO5DS | [Required: 'DeployHTTPS' ID of the HostZone where the domain you want to use is registered. The domain name to be used must be registered in Route53's HostZone. If you have not already done so, please create a new HostZone and register your domain. The HostZone must be public |
| sshKeyPairName  | '' | [Required: 'DeployC1NS' must be set to true] SSH Key of the EC2 you are using |
| CloudOneAPIKEY  | '' | [Required: 'DeployC1NS' must be set to true] CloudOne API key you want to use |
| InstanceType  | c5n.2xlarge | [Required: 'DeployC1NS' must be set to true] Instance type of NSVA |
| SecurityVPCCIDR | 10.10.10.0/16 | [Required: 'DeployC1NS' must be set to true] CIDR of the VPC where you want to deploy the NSVA |
| NsvaCountPerAz  | 1 | [Required: 'DeployC1NS' must be set to true] Number of NSVA instances to be deployed in the AZ |
| EnableInspectionLogs  | false | [Required: 'DeployC1NS' must be set to true] If enabled, NSVA Inspection Logs will be published to CloudWatch log group "network_security_logs" |
| SyslogPort  | 5140 | [Required: 'DeploySplunk' must be set to true] Port number used by Splunk Server |
| SplunkPassword  | Trendmicr0! | [Required: 'DeploySplunk' must be set to true] Password used by Splunk Server |
| SplunkVersion  | 8.2 | [Required: 'DeploySplunk' must be set to true] Splunk Version |