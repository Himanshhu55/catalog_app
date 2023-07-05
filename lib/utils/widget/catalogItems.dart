import 'package:catalouge_app/main.dart';
import 'package:catalouge_app/models/cart.dart';
import 'package:catalouge_app/models/catalog.dart';
import 'package:catalouge_app/utils/widget/catalogImage.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import 'addTocart.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              catalog.name,
              style: TextStyle(
                fontFamily: GoogleFonts.poppins().fontFamily,
                color: MyApp.darkbluishcolor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            5.heightBox,
            Text(
              catalog.desc,
              style: TextStyle(
                fontFamily: GoogleFonts.poppins().fontFamily,
                color: MyApp.darkbluishcolor,
                fontSize: 12,
                fontWeight: FontWeight.w200,
              ),
            ),
            25.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.bold.lg.make(),
                AddToCart(catalog: catalog)
              ],
            ).pOnly(right: 10)
          ],
        ))
      ],
    )).white.roundedLg.square(150).make().py16();
  }
}
