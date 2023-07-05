import 'package:catalouge_app/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Catalog App",
          style: TextStyle(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontWeight: FontWeight.bold,
              fontSize: 45,
              color: MyApp.darkbluishcolor),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 95),
          child: Text(
            "Trending products",
            textAlign: TextAlign.end,
            style: TextStyle(
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.w100,
                fontSize: 20,
                color: MyApp.darkbluishcolor),
          ),
        ),
      ],
    );
  }
}
