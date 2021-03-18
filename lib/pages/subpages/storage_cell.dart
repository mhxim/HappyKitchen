import 'package:flutter/material.dart';
import 'package:happy_kitchen/pages/subpages/product_view.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';
import 'package:happy_kitchen/widgets/stat_box.dart';
import 'package:happy_kitchen/utils/services/products_service.dart';

class StorageCell extends StatefulWidget {
  StorageCell({Key key, this.id}) : super(key: key);
  final String id;
  @override
  _StorageCellState createState() => _StorageCellState();
}

class _StorageCellState extends State<StorageCell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 40.0, top: 20.0),
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
                        child: Text("Fridge 1", style: AppTheme.pageTitle),
                      ),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.vertical,
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
                                            text: "4 registered"),
                                        StatBox(
                                            title: "Storage Units",
                                            text: "4 registered")
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: AppTheme.defaultMargin,
                                    child: Text("Products",
                                        style: AppTheme.subTitle),
                                  ),
                                  Container(
                                    decoration: AppTheme.defaultBox,
                                    width: MediaQuery.of(context).size.width -
                                        80.0,
                                    child: Padding(
                                        padding: EdgeInsets.all(15.0),
                                        child: DataTable(
                                          columns: const <DataColumn>[
                                            DataColumn(
                                              label: Text(
                                                'Quantity',
                                                style: AppTheme.tableTitle,
                                              ),
                                            ),
                                            DataColumn(
                                              label: Text(
                                                'Product',
                                                style: AppTheme.tableTitle,
                                              ),
                                            ),
                                            DataColumn(
                                              label: Text(
                                                'Actions',
                                                style: AppTheme.tableTitle,
                                              ),
                                            ),
                                          ],
                                          rows: <DataRow>[
                                            for (var product
                                                in ScannedProduct.items)
                                              DataRow(
                                                cells: <DataCell>[
                                                  DataCell(Text(product.quantity
                                                      .toString())),
                                                  DataCell(Text(product.title,
                                                      style:
                                                          AppTheme.tableText)),
                                                  DataCell(
                                                    GestureDetector(
                                                        onTap:
                                                            () =>
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                    builder: (BuildContext context) => ProductView(
                                                                        id: product
                                                                            .id,
                                                                        lastPage:
                                                                            "Fridge 1"),
                                                                  ),
                                                                ),
                                                        child: Icon(
                                                            Icons.view_agenda)),
                                                  ),
                                                ],
                                              )
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ]))));
  }
}
