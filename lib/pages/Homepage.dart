import 'dart:convert';
import 'package:catalouge_app/main.dart';
import 'package:catalouge_app/models/catalog.dart';
import 'package:catalouge_app/pages/cart_page.dart';
import 'package:catalouge_app/utils/routes.dart';
import 'package:catalouge_app/utils/widget/catalogHeader.dart';
import 'package:catalouge_app/utils/widget/catalogList.dart';
import 'package:catalouge_app/utils/widget/drawer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString("assets/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    final productsData = decodedData("products");
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyApp.darkbluishcolor,
        child: Icon(CupertinoIcons.cart,),
          onPressed: (){
          Navigator.pushNamed(context, Myroutes.CartRoute );
      }),
      drawer: Mydrawer(),
      appBar: AppBar(
        backgroundColor: MyApp.creamcolor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
        backgroundColor: MyApp.creamcolor,
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 6,right: 32,left: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  Center(
                    child: CircularProgressIndicator(),
                  )
              ],
            ),
          ),
        ));
  }
}







