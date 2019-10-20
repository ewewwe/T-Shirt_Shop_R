module.exports = ({ assert, response, store }) => ({
    path: 'orders',
    method: 'get',
    test() {

     assert.deepEqual(response[0].orderNumber,store.mockOrders[0].orderNumber);
    },
    setup() {
        // Store the mockusers in the db (setup for next step/query)
        store.mockOrder = [{"orderNumber":123456777,"UserID":5555,"Price":150}]
      }
  });