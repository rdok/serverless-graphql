.aws-sam/build:
	sam build

test: node_modules
	npm run test

node_modules:
	npm install
