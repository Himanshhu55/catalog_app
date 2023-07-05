import 'package:catalouge_app/pages/Homepage.dart';
import 'package:catalouge_app/pages/loginpage.dart';
import 'package:catalouge_app/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:catalouge_app/pages/cart_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkbluishcolor = Color(0xff403b58);
  static Color white = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme,
          appBarTheme: AppBarTheme(backgroundColor: Colors.white),
          iconTheme: IconThemeData(color: Colors.black),
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.poppins().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.light),
      initialRoute: Myroutes.Homeroute,
      routes: {
        "/": (context) => loginpage(),
        Myroutes.Homeroute: (context) => Homepage(),
        Myroutes.loginroute: (context) => loginpage(),
        Myroutes.CartRoute: (context) => CartPage(),
      },
    );
  }
}
