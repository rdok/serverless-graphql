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
[deploy]: https://github.com/rdok/serverless-graphql-template/actions?query=workflow%3ADeploy
[test_site_badge]: https://img.shields.io/badge/test-orange?style=flat-square&logo=amazon-aws
[test_site]: https://fvi7lp02ra.execute-api.eu-west-1.amazonaws.com/Prod/graphql
[prod_site_badge]: https://img.shields.io/badge/prod-blue?style=flat-square&logo=amazon-aws
[prod_site]: https://l6019i1r7g.execute-api.eu-west-1.amazonaws.com/Prod/graphql
[design]: ./design.png
