module.exports = ({ expect, response }) => ({
    path: 'orders',
    method: 'delete',
    test() {
      // Expect the deletion to go through without warnings
      expect(response.warningCount).to.equal(0);
    }
  });