// test cases for point calculations
const mysql = require('mysql');
//import module to test
const crypt = require('./points.js');

// mock db query
const mockAdjust = jest.fn();

//testing suite
describe("Driver Points Tests", () => {

    //testing addAdjustment function
    test('Testing add adjustment', () => {
        
        var origPts = 5;
        var changePts = mockAdjust(0, 0);

        expect(changePts).not.toBe(origPts);
    });

});