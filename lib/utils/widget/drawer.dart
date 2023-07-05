import 'package:catalouge_app/pages/Homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  final imageurl =
      "https://stream.myjosh.in/stream/prod-ugc-contents/profile_pictures/3215476ff66aa09b/9f57cc31085e6700/3215476ff66aa09b9f57cc31085e6700_orig.jpeg";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                accountName: Text("Himanshu kushwaha"),
                accountEmail: Text("himanshukushwah286@gmail.com"),
                currentAccountPicture: InkWell(
                  onTap: (){

                  },
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(imageurl),
                  ),
                ),
                currentAccountPictureSize: Size.square(60),
              )),
          ListTile(
            onTap: (){

            },
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.5,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            onTap: (){

            },
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.5,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            onTap: (){

            },
            leading: Icon(
              CupertinoIcons.cube_box,
              color: Colors.white,
            ),
            title: Text(
              "Product",
              textScaleFactor: 1.5,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            onTap: (){

            },
            leading: Icon(
              CupertinoIcons.shopping_cart,
              color: Colors.white,
            ),
            title: Text(
              "Cart",
              textScaleFactor: 1.5,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            onTap: (){

            },
            leading: Icon(
              CupertinoIcons.envelope_circle,
              color: Colors.white,
            ),
            title: Text(
              "Contact",
              textScaleFactor: 1.5,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            onTap: (){

            },
            leading: Icon(
              CupertinoIcons.gear_solid,
              color: Colors.white,
            ),
            title: Text(
              "Setting",
              textScaleFactor: 1.5,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            onTap: (){

            },
            leading: Icon(
              CupertinoIcons.question_circle,
              color: Colors.white,
            ),
            title: Text(
              "Help and feedback",
              textScaleFactor: 1.5,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            onTap: (){

            },
            leading: Icon(
              CupertinoIcons.square_arrow_right,
              color: Colors.white,
            ),
            title: Text(
              "Sign out",
              textScaleFactor: 1.5,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
