import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String item;
  final String name;
  final String price;

  const ImageCard({Key key, this.item, this.name, this.price})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 140,
          width: 140,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image:
                  DecorationImage(image: AssetImage(item), fit: BoxFit.cover)),
          child: Transform.translate(
              offset: Offset(50, -55),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 65, vertical: 65),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent),
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
              )),
        ),
        SizedBox(
          height: 10.0,
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.0),
            ),
            Text(name),
            SizedBox(
              width: 5.0,
            ),
            Text(
              price,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }
}
