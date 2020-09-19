# AWS-SAM-GraphQL-Template
[![Deploy](https://github.com/rdok/aws-sam-graphql-template/workflows/Deploy/badge.svg)](https://github.com/rdok/aws-sam-graphql-template/actions?query=workflow%3ADeploy)

This is a template for AWS SAM. It creates a single lambda that runs the Apollo GraphQL Server.

It automates the creation of the IAM user and bucket for deployments using terraform.  
See `infrastructure`.

Finally, it automates the deployment using GitHub actions.
See `.github/workflows/deploy.yml`

##### Notes
1. Use Terraform cloud to run the infrastructure. 
    - Create Terraform workspace for `aws-sam-graphql-template-staging`
        - Specify `infrastructure` working directory
        - Create `environment` terraform variable with `staging` value
        - Add `AWS_ACCESS_KEY_ID` and  `AWS_SECRET_ACCESS_KEY` environment variables. Preferably with admin privelges :/
2. You can get the AWS secrets for the GitHub action secrets from the IAM user that terraform created from previous step.
    - This is the only step not automated; partially due to security reasons and partly, just don't know a cheap way to do it.
    - Alternatively, you could modify `infrastructe` folder to run terraform locally.
    - Or create these resources with your preferred approach.
