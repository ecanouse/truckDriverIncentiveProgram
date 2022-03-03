

/* ---------------- FUNCTIONS TO HASH & VALIDATE PASSWORDS ------------- */

// Credits : https://ciphertrick.com/salt-hash-passwords-using-nodejs-crypto/
// REQUIRE CRYPTO LIBRARY

function crypto_test() {
  // (A) LOAD ENCRYPT LIBRARY
  const CryptoJS = require("crypto-js");

  // (B) SECRET KEY
  var key = "ASECRET";

  // (C) ENCRYPT
  var cipher = CryptoJS.AES.encrypt("PASSWORD", key);
  cipher = cipher.toString();
  console.log(cipher);

  // (D) DECRYPT
  var decipher = CryptoJS.AES.decrypt(cipher, key);
  decipher = decipher.toString(CryptoJS.enc.Utf8);
  console.log(decipher);
};

//crypto_test();

// FUNCTION TO CREATE PASSWORD HASH
// returns hashed password & corresponding salt value
function getHash(clear) {
  const CryptoJS = require("crypto-js");
  var key = "mad_lads_encryption" //this may not be a super safe way to do this but it works

  var cipher = CryptoJS.AES.encrypt(clear, key);
  cipher = cipher.toString();
  console.log(cipher);
  return( cipher );

};

// FUNCTION TO VALIDATE PASSWORD
// userpass --> typed password given from user
// storedpassword --> hashed password in the database
function validatePassword(userpass, storedpassword) {
  const CryptoJS = require("crypto-js");
  var key = "mad_lads_encryption"

   decryppass = CryptoJS.AES.decrypt(storedpassword, key);
   decryppass = decryppass.toString(CryptoJS.enc.Utf8);

  return userpass == decryppass;
};

module.exports = { getHash, validatePassword };

// // TEST ENCRYPT
// // Save BOTH the password and salt into database or file
// var clearpass = "He110Wor!d";
// var creeped = getHash(clearpass);
// console.log("===== HASHED PASSWORD + SALT =====");
// console.log(creeped);

// // TEST VALIDATE
// // clearpass = "FOOBAR";
// var validated = validatePassword(clearpass, creeped.hash, creeped.salt);
// console.log("===== VALIDATION =====");
// console.log("Clear password: " + clearpass);
// console.log("Validation status: " + validated);