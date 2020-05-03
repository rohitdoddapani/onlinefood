import 'package:flutter/material.dart';


class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_loc: 'assets/horizontal/biryani.jpg',
            img_cap: 'Biryanis',
          ),
          Category(
            image_loc: 'assets/horizontal/milkshake.jpg',
            img_cap: 'MilkShakes',
          ),
          Category(
            image_loc: 'assets/horizontal/tiffins.jpg',
            img_cap: 'tiffins',
          ),
          Category(
            image_loc: 'assets/horizontal/colddrinks.png',
            img_cap: 'colddrinks',
          ),
          Category(
            image_loc: 'assets/horizontal/lamb.jpg',
            img_cap: 'Snacks',
          ),
        ],
      ),
    );
  }
}


class Category extends StatelessWidget {
  final String image_loc;
  final String img_cap;

  Category({
    this.image_loc,
    this.img_cap,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(image_loc,
            width: 100,
            height: 100,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(img_cap,style: TextStyle(fontSize: 13),),
            ),
          )
        ),
      ),
    );
  }
}
