import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';
import 'package:happy_kitchen/utils/services/storage_service.dart';
import 'package:happy_kitchen/widgets/big_button.dart';
import 'package:happy_kitchen/utils/model/product.dart';
import 'package:date_time_picker/date_time_picker.dart';

class StorageCellAdd extends StatefulWidget {
  StorageCellAdd({Key key, this.productName}) : super(key: key);
  final String productName;

  @override
  _StorageCellAddState createState() => _StorageCellAddState();
}

class _StorageCellAddState extends State<StorageCellAdd> {
  TextEditingController storageUnitNameController = TextEditingController();
  Product item;
  String expiry;
  String storageUnitName;
  DocumentSnapshot storageUnits;
  @override
  void initState() {
    super.initState();
    // Storage.getStorageUnits().then((value) => storageUnits = value);
    // for (var storageUnit in storageUnits.data()["name"])
    //   storageUnitItems.add(storageUnit);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: AppTheme.routeMargin,
                        child: GestureDetector(
                          child:
                              Text("PRODUCT VIEW", style: AppTheme.routeText),
                          onTap: () => Navigator.pop(context),
                        ),
                      ),
                      Padding(
                        padding: AppTheme.pageTitleMargin,
                        child:
                            Text("Add Storage Unit", style: AppTheme.pageTitle),
                      ),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            DateTimePicker(
                              initialValue: '',
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2100),
                              dateLabelText: 'Expiry',
                              onChanged: (val) => expiry = val,
                              validator: (val) {
                                print(val);
                                return null;
                              },
                              onSaved: (val) => expiry = val,
                            ),
                            DropdownButton<String>(
                              items: <String>["beispiel"].map((String value) {
                                return new DropdownMenuItem<String>(
                                  value: value,
                                  child: new Text(value),
                                );
                              }).toList(),
                              onChanged: (String storageUnit) {
                                setState(() {
                                  storageUnitName = storageUnit;
                                });
                              },
                            ),
                            SizedBox(height: 10),
                            GestureDetector(
                              onTap: () {
                                // if (item.name != null &&
                                //     item != null &&
                                //     storageUnitName != null)
                                //   Storage.addItem(storageUnitName, item);
                              },
                              child: BigButton(
                                text: "Add Storage Unit",
                                color: AppTheme.highlightColor,
                                textColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]))));
  }
}
