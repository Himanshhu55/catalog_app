import 'package:catalouge_app/models/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:catalouge_app/main.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyApp.creamcolor,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            "Cart",
            style: TextStyle(
              fontFamily: GoogleFonts.poppins().fontFamily,
              color: MyApp.darkbluishcolor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ).pOnly(right: 55),
      ),
      body: Column(
        children: [
          _Cartlist().p16().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}".text.xl4.color(MyApp.darkbluishcolor).make(),
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Buying is not spported yet")));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(MyApp.darkbluishcolor)),
                  child: "Buy".text.make())
              .w32(context)
        ],
      ),
    );
  }
}

class _Cartlist extends StatefulWidget {
  const _Cartlist({Key? key}) : super(key: key);

  @override
  State<_Cartlist> createState() => _CartlistState();
}

class _CartlistState extends State<_Cartlist> {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty?Center(
      child: Text("Nothing to show",style: TextStyle(
        fontSize: 30,
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontWeight: FontWeight.w300
      ),),
    ): ListView.builder(
        itemCount: _cart.items?.length,
        itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                onPressed: () {
                  _cart.remove(_cart.items[index]);
                  setState(() {

                  });
                },
                icon: Icon(Icons.remove_circle_outline),
              ),
              title: _cart.items[index].name.text.make(),
            ));
  }
}
