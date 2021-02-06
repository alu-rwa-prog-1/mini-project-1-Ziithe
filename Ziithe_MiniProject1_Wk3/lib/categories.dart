import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: 20.0,
            ),
            child: Row(
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/dahlia.png'),
                        backgroundColor: Colors.white,
                      ),
                      Text(
                        'Dahlias',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/rose.png'),
                        backgroundColor: Colors.white,
                      ),
                      Text(
                        'Roses',
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/lily.png'),
                        backgroundColor: Colors.white,
                      ),
                      Text(
                        'Lillies',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/daisy.png'),
                        backgroundColor: Colors.white,
                      ),
                      Text(
                        'Daisies',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/sunflower.png'),
                        backgroundColor: Colors.white,
                      ),
                      Text(
                        'Sunflowers',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/gardenia.png'),
                        backgroundColor: Colors.white,
                      ),
                      Text(
                        'Gardenias',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/orchid.png'),
                        backgroundColor: Colors.white,
                      ),
                      Text(
                        'Orchids',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/tulip.png'),
                        backgroundColor: Colors.white,
                      ),
                      Text(
                        'Tulips',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
