// test cases for update account
// import modules
const mysql = require('mysql');
const udate = require('./updateaccount.js');

// mock db query
const mockUpdate = jest.fn();


// define testing suite
describe("Update Account Test", () => {

    test("Test update account", () => {
        oldInfo = 5
        newInfo = oldInfo.mockUpdate(10);

        expect(newInfo).not.toBe(oldInfo);
    });

});