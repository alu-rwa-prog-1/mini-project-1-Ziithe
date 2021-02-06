import 'package:Ziithe_MiniProject1_Wk3/categories.dart';
import 'package:Ziithe_MiniProject1_Wk3/drawer.dart';
import 'package:Ziithe_MiniProject1_Wk3/image_card.dart';
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

  final List<String> _listText = [
    'Rose Bouquet,',
    'Fresh Tulips,',
    'Wedding Bouquet,',
    'Garden Sunflowers,',
    'Pink Roses,',
    'Rose Basket,',
    'Pink Dahlias,',
    'Pink Orchids,',
    'Mixed Fresh Bouquet,',
    'Mixed Rose Bouquet,'
  ];

  final List<String> _listPrice = [
    'RWF 6000',
    'RWF 5000',
    'RWF 7000',
    'RWF 4500',
    'RWF 6500',
    'RWF 12000',
    'RWF 7000',
    'RWF 4500',
    'RWF 6000',
    'RWF 8000'
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
          title: Text("Suku's Botanic"),
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
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15.0, left: 10.0),
                  child: Text("Categories",
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 5.0),
                Category(),
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 15.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 14.0),
                        hintText: "What are you looking for?",
                        suffixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 10.0),
                  child: Text("Popular Products",
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold)),
                ),
                Container(
                  height: 500,
                  width: 500,
                  child: GridView.count(
                      crossAxisCount: 2,
                      padding: EdgeInsets.all(10.0),
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      shrinkWrap: true,
                      children: List.generate(_listItem.length, (index) {
                        return Center(
                          child: ImageCard(
                            item: _listItem[index],
                            name: _listText[index],
                            price: _listPrice[index],
                          ),
                        );
                      })),
                ),
              ],
            ),
          ),
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
