

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
}




// FUNCTION TO CREATE PASSWORD HASH
// returns hashed password & corresponding salt value
function getHash(clear) {
var crypto = require("crypto");
// GENERATE RANDOM SALT
let length = 16;
let salt =  crypto.randomBytes(Math.ceil(length / 2))
.toString("hex")
.slice(0, length); 

// SHA512 HASH
let hash = crypto.createHmac("sha512", salt);
hash.update(clear);
return( hash.digest("hex") + " " + salt);
};

// FUNCTION TO VALIDATE PASSWORD
function validatePassword(userpass, storedpassword) {
var crypto = require("crypto");
hashdata = storedpassword.split(" ");
hashedpass = hashdata[0];
salt = hashdata[1];
let hash = crypto.createHmac("sha512", salt);
hash.update(userpass);
userpass = hash.digest("hex");
return userpass == hashedpass;
};

//module.exports = { getHash, validatePassword };

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