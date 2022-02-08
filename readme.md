> Replaced by https://github.com/rdok/aws-sam-ts-graphql Apollo GraphQL Server template with AWS SAM, TypeScript & Lambda. Boilerplate with GitHub CI/CD actions, best security practises such as least privileges IAM policies, automated dependency updates and much more. 

# Serverless GraphQL
[![Deploy][deploy_badge]][deploy]
[![prod-site][prod_site_badge]][prod_site]
[![test-site][test_site_badge]][test_site]


Creates Apollo GraphQL Server through API Gateway & Lambda.

![Design][design]

## Develop
- `make start`. Visit http://127.0.0.1:3002/graphql
- See `Makefile` for additional commands.

[deploy_badge]: https://github.com/rdok/serverless-graphql/workflows/Deploy/badge.svg
[deploy]: https://github.com/rdok/serverless-graphql/actions/workflows/deploy.yml
[test_site_badge]: https://img.shields.io/badge/test-green?style=flat-square&logo=amazon-aws
[test_site]: https://rxxf74wfo2.execute-api.eu-west-1.amazonaws.com/Prod/graphql
[prod_site_badge]: https://img.shields.io/badge/prod-orange?style=flat-square&logo=amazon-aws
[prod_site]: https://kngg029ho4.execute-api.eu-west-1.amazonaws.com/Prod/graphql
[design]: ./design.webp
