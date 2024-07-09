/**
 * Import function triggers from their respective submodules:
 *
 * const {onCall} = require("firebase-functions/v2/https");
 * const {onDocumentWritten} = require("firebase-functions/v2/firestore");
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializedApp();

// Create and deploy your first functions
// https://firebase.google.com/docs/functions/get-started

exports.helloWorld = functions.https.onRequest((request, response) => {
  functions.logger.info("Hello logs!", {structuredData: true});
    var docRef = admin.firestore().doc("testCollection1/testDocument1");
    docRef.get().then(doc=>{
      if(doc.exists){
        response.send(doc.data())
      }else{
        response.send("nodata")
      }
      return null;
    }).catch(error => {
      response.send("error")
    })
});
