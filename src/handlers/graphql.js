const { ApolloServer, gql } = require('apollo-server-lambda');

const typeDefs = gql`
  type Query {
    hello: String
  }
`;

const resolvers = {
  Query: {
    hello: () => 'Hello world!',
  },
};

const context = ({ event, context }) => ({
  headers: event.headers,
  functionName: context.functionName,
  event,
  context,
});

const server = new ApolloServer({
  typeDefs,
  resolvers,
  playground: true,
  introspection: true,
  context
});


exports.handler = server.createHandler({
  cors: {
    origin: '*',
    credentials: true,
  },
});


const handler = (event, lambdaContext, callback) => {
  const playgroundRequested = event.httpMethod === 'GET';

  if (!playgroundRequested) {
    return server.createHandler()(event, lambdaContext, callback);
  }

  return server.createHandler()(
    { ...event, path: event.requestContext.path || event.path },
    lambdaContext,
    callback,
  );
};

exports.graphqlHandler = handler;
