module.exports = ({ assert, response, store }) => ({
    path: 'orders',
    method: 'get',
    test() {
      // failar för att ID inte finns med i mockOrder
      assert.deepEqual(response[6], store.mockOrder[0]);
    }
  });