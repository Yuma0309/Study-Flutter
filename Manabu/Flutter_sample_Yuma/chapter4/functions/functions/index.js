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

// 5分ごとに実行
exports.timer1 = functions.pubsub.schedule('every 5 minutes').onRun((context) => {
  functions.logger.info("timer1 start", {structuredData: true});
  return null;
});

// 3分ごとに実行
exports.timer2 = functions.pubsub.schedule('*/3****').onRun((context) => {
  functions.logger.info("timer2 start", {structuredData: true});
  return null;
});
