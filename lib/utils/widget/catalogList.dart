import 'package:catalouge_app/models/catalog.dart';
import 'package:catalouge_app/pages/HomeDetails_dart.dart';
import 'package:catalouge_app/pages/Homepage.dart';
import 'package:catalouge_app/utils/widget/catalogItems.dart';
import 'package:flutter/material.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            HomeDetailsPage(catalog: catalog)));
              },
              child: CatalogItem(catalog: catalog));
        });
  }
}
