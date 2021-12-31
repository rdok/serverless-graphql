start: node_modules
	sam local start-api --port 3002

test: node_modules
	npm run test
test-watch: node_modules
	npm run test:watch

node_modules:
	npm ci
