import 'package:flutter/material.dart';
import 'package:flutter_app/pages/product_detail.dart';

class Stalls extends StatefulWidget {
  @override
  _StallsState createState() => _StallsState();
}

class _StallsState extends State<Stalls> {
  var stall_list = [
    {
      "name":"Biryanis",
      "picture":"assets/horizontal/biryani.jpg",
      "old_price": 120,
      "price": 90,
    },
    {
      "name":"Tiffins",
      "picture":"assets/horizontal/tiffins.jpg",
      "old_price": 100,
      "price": 70,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: stall_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){
          return Single_stal(
            stal_name: stall_list[index]['name'],
            stal_pic: stall_list[index]['picture'],
            stal_oldprice: stall_list[index]['old_price'],
            stal_price: stall_list[index]['price'],
          );
        }
    );
  }
}


class Single_stal extends StatelessWidget {
  final stal_name;
  final stal_pic;
  final stal_oldprice;
  final stal_price;

  Single_stal({
    this.stal_name,
    this.stal_pic,
    this.stal_oldprice,
    this.stal_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: stal_name,
        child: Material(
          child: InkWell(onTap: ()=>
            Navigator.of(context).push(
              new MaterialPageRoute(
                  builder: (context)=>new ProductDetail(
                    stal_detail_name: stal_name,
                    stal_detail_oldprice: stal_oldprice,
                    stal_detail_pic: stal_pic,
                    stal_detail_price: stal_price,
                  ))),
            child: GridTile(
              footer:Container(
                color: Colors.orange[100],
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(stal_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    ),
                    new Text("\$${stal_price}",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              child: Image.asset(stal_pic,
              fit: BoxFit.cover,),
            ),
          ),
        ),
      ),
    );
  }
}


//past UI
//ListTile(
//leading: Text(stal_name,style: TextStyle(
//fontWeight: FontWeight.bold,
//
//),),
//title: Text("\$$stal_price",style: TextStyle(
//color: Colors.orange,
//fontWeight: FontWeight.w800,
//),),
//subtitle: Text("\$$stal_oldprice",style: TextStyle(
//color: Colors.orange,
//fontWeight: FontWeight.w800,
//decoration: TextDecoration.lineThrough,
//),),
//),