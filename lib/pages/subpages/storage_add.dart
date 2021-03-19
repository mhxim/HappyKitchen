import 'package:flutter/material.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';
import 'package:happy_kitchen/utils/services/storage_service.dart';
import 'package:happy_kitchen/widgets/big_button.dart';

class StorageAdd extends StatefulWidget {
  @override
  _StorageAddState createState() => _StorageAddState();
}

class _StorageAddState extends State<StorageAdd> {
  TextEditingController storageUnitNameController = TextEditingController();

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
                          child: Text("STORAGE", style: AppTheme.routeText),
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
                            TextFormField(
                              controller: storageUnitNameController,
                              decoration: InputDecoration(
                                labelText: "Storage Unit Name",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            GestureDetector(
                              onTap: () {
                                Storage.addStorageUnits(
                                    storageUnitNameController.text);
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
