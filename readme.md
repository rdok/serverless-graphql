# AWS-SAM-GraphQL-Template
[![Deploy](https://github.com/rdok/aws-sam-graphql-template/workflows/Deploy/badge.svg)](https://github.com/rdok/aws-sam-graphql-template/actions?query=workflow%3ADeploy)

This is a template for AWS SAM. It creates a single lambda that runs the Apollo GraphQL Server.

It automates the creation of the IAM user and bucket for deployments using terraform.  
See `infrastructure`.

Finally, it automates the deployment using GitHub actions.
See `.github/workflows/deploy.yml`

##### Notes
- You can get the AWS secrets for the GitHub action secrets from the IAM user that terraform creates.
    - This is the only step not automated; partially due to security reasons and partly, just don't know a cheap way to do it.
- Use Terraform cloud to run the infrastructure. 
    - Alternatively, you'll have to modify `infrastructe` folder to run locally.
    - Or create these resources with some other approach.
