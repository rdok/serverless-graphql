# Serverless GraphQL
[![Deploy][deploy_badge]][deploy]
[![prod-site][prod_site_badge]][prod_site]
[![test-site][test_site_badge]][test_site]


Creates Apollo GraphQL Server through API Gateway & Lambda.

![Design][design]

## Develop
`make start`. Visit http://127.0.0.1:3002/graphql

See `Makefile` for additional commands.

[deploy_badge]: https://github.com/rdok/serverless-graphql/workflows/Deploy/badge.svg
[deploy]: https://github.com/rdok/serverless-graphql/actions/workflows/build-deploy.yml
[test_site_badge]: https://img.shields.io/badge/test-orange?style=flat-square&logo=amazon-aws
[test_site]: https://ekgkan90nf.execute-api.eu-west-1.amazonaws.com/Prod/graphql
[prod_site_badge]: https://img.shields.io/badge/prod-blue?style=flat-square&logo=amazon-aws
[prod_site]: https://7kjha4oyu1.execute-api.eu-west-1.amazonaws.com/Prod/graphql
[design]: ./design.webp
