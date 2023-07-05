import 'package:catalouge_app/main.dart';
import 'package:catalouge_app/models/catalog.dart';
import 'package:catalouge_app/utils/routes.dart';
import 'package:catalouge_app/utils/widget/addTocart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;

 const HomeDetailsPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.red500.make(),
             AddToCart(catalog: catalog).wh(130, 50),
            ]).p32(),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 30,
              edge: VxEdge.top,
              arcType: VxArcType.convey,
              child: Container(
                width: context.screenWidth,
                child: Column(children: [
                  Text(
                    catalog.name,
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      color: MyApp.darkbluishcolor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  5.heightBox,
                  Text(
                    catalog.desc,
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      color: MyApp.darkbluishcolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  10.heightBox,
                  Expanded(
                      child: Text(
                    "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar,s",
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15,
                        fontFamily: GoogleFonts.poppins().fontFamily),
                  ).p16())
                ]).py64(),
                color: Colors.white,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
