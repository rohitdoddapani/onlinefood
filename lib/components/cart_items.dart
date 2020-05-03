import 'package:flutter/material.dart';

class CartItems extends StatefulWidget {
  @override
  _CartItemsState createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  var Items_on_cart=[
    {
      "name":"Biryanis",
      "pic":"assets/horizontal/biryani.jpg",
      "cust": 120,
      "price": 90,
      "qty":"1",
    },
    {
      "name":"Tiffins",
      "pic":"assets/horizontal/tiffins.jpg",
      "cust": 100,
      "price": 70,
      "qty":"1",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Items_on_cart.length,
        itemBuilder: (context,index){
          return Single_cart_item(
            cart_item_name: Items_on_cart[index]["name"],
            cart_item_pic: Items_on_cart[index]["pic"],
            cart_item_cust: Items_on_cart[index]["cust"],
            cart_item_price: Items_on_cart[index]["price"],
            cart_item_qty: Items_on_cart[index]["qty"],
          );
        });
  }
}

class Single_cart_item extends StatelessWidget {
  final cart_item_name;
  final cart_item_pic;
  final cart_item_cust;
  final cart_item_price;
  final cart_item_qty;

  Single_cart_item({
    this.cart_item_name,
    this.cart_item_pic,
    this.cart_item_price,
    this.cart_item_qty,
    this.cart_item_cust,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cart_item_pic,width: 80,height: 80,),
        title: Text(cart_item_name),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("qty:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(cart_item_qty),
                ),
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: Text("\$${cart_item_price}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ) ,),
            ),
          ],
        ),
      ),
    );
  }
}
