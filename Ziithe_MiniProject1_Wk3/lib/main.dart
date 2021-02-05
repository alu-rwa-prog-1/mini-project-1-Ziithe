import 'package:Ziithe_MiniProject1_Wk3/categories.dart';
import 'package:Ziithe_MiniProject1_Wk3/drawer.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final List<String> _listItem = [
    'images/1.jpg',
    'images/2.jpg',
    'images/3.jpg',
    'images/4.jpg',
    'images/5.jpg',
    'images/6.jpg',
    'images/7.jpg',
    'images/8.jpg',
    'images/9.jpg',
    'images/10.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Shalom's Botanic"),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 30.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.notification_important),
              ),
            )
          ],
        ),
        //Menu drawer
        drawer: Drawer(
          child: MyDrawer(),
        ),
        //Body
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: const AlwaysScrollableScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15.0, left: 10.0),
              child: Text("Categories",
                  style:
                      TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 15.0),
            Category(),
            Container(
              padding: EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(30.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 14.0),
                    hintText: "What are you looking for?",
                    suffixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text("Popular Products",
                  style:
                      TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(20.0),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                shrinkWrap: true,
                children: _listItem
                    .map((item) => Card(
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(item),
                                    fit: BoxFit.cover)),
                          ),
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
        //Bottom NavBar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.teal),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Wishlist',
                backgroundColor: Colors.teal),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
                backgroundColor: Colors.teal),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.teal),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
