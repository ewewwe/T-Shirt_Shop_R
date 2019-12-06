module.exports = ({ assert, response, store, repeat, i, Orders}) => ({
    path: 'orders',
    method: 'get',
    test() {

        assert.deepEqual(response[i].UserID,store.mockOrders[i].UserID);  
        Orders = [];
        if (response[i].UserID == '5555'){
          Orders.push({orderNumber: response[i].orderNumber, UserID: response[i].UserID, Price: response[i].Price})
        }
       if(store.mockUsers[i + 1]){
          repeat();
        }
    },
    setup() {
        // Store the mockusers in the db (setup for next step/query)
        store.mockOrder = [{"orderNumber":Orders.orderNumber, "UserID":Orders.UserID, "Price":Orders.Price}]
      }
  });