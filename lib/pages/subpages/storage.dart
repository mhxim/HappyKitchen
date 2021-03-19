import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:happy_kitchen/utils/model/product.dart';
import 'package:happy_kitchen/utils/services/storage_service.dart';
import 'package:happy_kitchen/widgets/storage_box.dart';
import 'package:happy_kitchen/widgets/stat_box.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';

class StoragePage extends StatefulWidget {
  @override
  _StoragePageState createState() => _StoragePageState();
}

class _StoragePageState extends State<StoragePage> {
  // DocumentSnapshot storageUnitName;
  // final firestoreInstance = FirebaseFirestore.instance;
  // var firebaseUser = FirebaseAuth.instance.currentUser;

  // @override
  // void initState() {
  //   super.initState();

  //   // Product test = new Product(
  //   //     name: "testproduct2",
  //   //     expiry: Timestamp.fromDate(DateTime.parse("2021-12-12")));
  //   // Storage.addStorageUnits("test3");
  //   // Storage.addItem("test3", test);
  //   log(Storage.getStorageUnits());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 40.0, top: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: AppTheme.routeMargin,
                      child: GestureDetector(
                        child: Text("HOME", style: AppTheme.routeText),
                        onTap: () => Navigator.pop(context),
                      ),
                    ),
                    Padding(
                      padding: AppTheme.pageTitleMargin,
                      child: Text("Storage", style: AppTheme.pageTitle),
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: AppTheme.defaultMargin,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: AppTheme.defaultMargin,
                                      child: Text("Statistics",
                                          style: AppTheme.subTitle),
                                    ),
                                    Container(
                                      height: 75.0,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          StatBox(
                                              title: "Storage Units",
                                              text: "1 registered"),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: AppTheme.defaultMargin,
                                  child:
                                      Text("Units", style: AppTheme.subTitle),
                                ),
                                Container(
                                  decoration: AppTheme.defaultBox,
                                  width:
                                      MediaQuery.of(context).size.width - 80.0,
                                  child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Wrap(children: [
                                        StorageBox(title: "beispiel")
                                      ])
                                      // StreamBuilder(
                                      //     stream: FirebaseFirestore.instance
                                      //         .collection('users')
                                      //         .doc(firebaseUser.uid)
                                      //         .snapshots(),
                                      //     builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                                      //       if (snapshot.hasError)
                                      //         return new Text(
                                      //             'Error: ${snapshot.error}');
                                      //       var storageDocument = snapshot.data;
                                      //       switch (snapshot.connectionState) {
                                      //         case ConnectionState.waiting:
                                      //           return new Text('Loading...');
                                      //         default:
                                      //           return new Wrap(
                                      //             children: for (storageDocument in storageDocument["storageUnits"]) {
                                      //               return new StorageBox(
                                      //                   title: document["name"],
                                      //                   document: document);
                                      //             },
                                      //           );
                                      //       }
                                      //     })
                                      ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ))));
  }
}
