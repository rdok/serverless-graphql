const lambda = require('../../../src/handlers/graphql.js');

describe('Test graphql handler', () => {
  it('has correct structure', () => {
    expect(lambda).toHaveProperty('graphqlHandler');
    expect(lambda).toHaveProperty('handler');
  });
});
