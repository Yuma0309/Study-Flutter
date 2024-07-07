/**
 * Import function triggers from their respective submodules:
 *
 * const {onCall} = require("firebase-functions/v2/https");
 * const {onDocumentWritten} = require("firebase-functions/v2/firestore");
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

const functions = require("firebase-functions");

// Create and deploy your first functions
// https://firebase.google.com/docs/functions/get-started

// DBの書き換え時に実行
exports.db1 = functions.firestore.document('testCollection1/testDocument1').onWhite((change,context) => {
  functions.logger.info("DBChange", {structuredData: true});
  return null;
});
