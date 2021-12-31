const { ApolloServer, gql } = require('apollo-server-lambda');

const typeDefs = gql`
  type Query {
    hello: String
  }
`;

const resolvers = {
  Query: {
    hello: () => `Hello world! ${new Date}`,
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

const serverHandler = server.createHandler({
  cors: {
    origin: 'studio.apollographql.com',
    credentials: true,
    allowedHeaders: ['content-type'],
    methods: ['GET', 'OPTIONS', 'POST']
  },
});

exports.graphqlHandler = (event, lambdaContext, callback) => {
    return serverHandler(event, lambdaContext, callback);
};
