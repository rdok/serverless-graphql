const lambda = require('../src/main.js');

describe('Test graphql handler', () => {
  it('has expected structure', () => {
    expect(lambda).toHaveProperty('graphqlHandler');
    expect(lambda).toHaveProperty('handler');
  });
});
