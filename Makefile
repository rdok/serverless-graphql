start: node_modules
	sam local start-api --port 3002

test: node_modules
	npm run test

node_modules:
	npm ci --frozen-lockfile
