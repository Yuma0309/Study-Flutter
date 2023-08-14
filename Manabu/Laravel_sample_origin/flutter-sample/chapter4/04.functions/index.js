const functions = require("firebase-functions");

// 必要なモジュールの読み込みと初期化
const admin = require("firebase-admin");
admin.initializeApp();

exports.helloWorld = functions.https.onRequest((request, response) => {
    functions.logger.info("Hello logs!", { structuredData: true });
    var docRef = admin.firestore().doc("testCollection1/testDocument1");
    docRef.get().then(doc => {
        if (doc.exists) {
            response.send(doc.data())
        } else {
            response.send("nodata")
        }
        return null;
    }).catch(error => {
        response.send("error")
    })
});
