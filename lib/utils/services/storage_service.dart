import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:happy_kitchen/utils/model/product.dart';

class Storage {
  static addStorageUnits(String storageUnitName) {
    final firestoreInstance = FirebaseFirestore.instance;
    var firebaseUser = FirebaseAuth.instance.currentUser;
    firestoreInstance.collection("users").doc(firebaseUser.uid).set({
      "storageUnits": FieldValue.arrayUnion([
        {"name": storageUnitName, "items": []}
      ]),
    }, SetOptions(merge: true)).then((_) {
      print("success!");
    });
  }

  static addItem(String storageUnitName, Product item) {
    final firestoreInstance = FirebaseFirestore.instance;
    var firebaseUser = FirebaseAuth.instance.currentUser;
    firestoreInstance.collection("users").doc(firebaseUser.uid).set({
      "storageUnits": [
        {
          "name": storageUnitName,
          "items": FieldValue.arrayUnion([
            {"name": item.name, "expiry": item.expiry}
          ])
        }
      ],
    }, SetOptions(merge: true)).then((_) {
      print("success!");
    });
  }

  static Future<DocumentSnapshot> getStorageUnits() {
    var value;
    final firestoreInstance = FirebaseFirestore.instance;
    var firebaseUser = FirebaseAuth.instance.currentUser;
    firestoreInstance
        .collection("users")
        .doc(firebaseUser.uid)
        .get()
        .then((value) {
      value = value.data()["storageUnits"];
    });
    return value;
  }
}
