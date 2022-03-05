
const crypt = require('./encryption.js');

describe("Encryption Tests", () => {
    test('Testing hashing', () => {
        
        var clearpass = "password";
        var hashpass = crypt.getHash(clearpass);

        expect(hashpass).not.toBe(clearpass);
    });
});
