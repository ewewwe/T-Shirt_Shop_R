module.exports = ({ assert, response, store }) => ({
    path: 'orders',
    method: 'get',
    test() {
      // check that we got the right number of users
      // (intentionelly spelled length wrong to provoke a fail)
      assert.equal(response.length, store.mockOrders.length);
      // failar för att ID inte finns med i mockOrders
      assert.deepEqual(response, store.mockOrders);
    }
  });