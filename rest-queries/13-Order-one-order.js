module.exports = ({ response, store}) => ({
    path: 'orders',
    method: 'post',
    body: store.mockOrder[0],
    test() {
      // check that a row was inserted in the db
      response.affectedRows.should.equal(1);
      // store the inserted id in mockOrders
      store.mockOrder[0].id = response.insertId;
      // repeat this step/query as long as
      // there a more mockOrders to insert
    }
  });