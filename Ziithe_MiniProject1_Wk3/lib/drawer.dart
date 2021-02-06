import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.teal,
                backgroundImage: AssetImage('images/profilepic.jpg'),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Nailah HK",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text("nailahrocks@gmail.com", style: TextStyle(fontSize: 18)),

              // Place Divider Here
              Divider(
                height: 20.0,
                color: Colors.teal,
              ),

              //Menu
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.home,
                  color: Colors.teal,
                ),
                title: Text("Home"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.favorite,
                  color: Colors.teal,
                ),
                title: Text("Wishlist"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.teal,
                ),
                title: Text("Cart"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.settings,
                  color: Colors.teal,
                ),
                title: Text("Settings"),
              ),
              SizedBox(
                height: 200.0,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.logout,
                  color: Colors.teal,
                ),
                title: Text("Log Out"),
              )
            ],
          ),
        )
      ],
    );
  }
}
