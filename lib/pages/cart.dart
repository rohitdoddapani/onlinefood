import 'package:flutter/material.dart';
import 'package:flutter_app/components/cart_items.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orange,
        title: Text('Cart'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: null),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: null)
        ],
      ),
      body: CartItems(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text('Total:'),
                subtitle: Text("\$200"),
              ),
            ),
            Expanded(
              child: new MaterialButton(onPressed: (){},
              child: Text("check out",style: TextStyle(color: Colors.white),),
              color: Colors.orange,),
            ),
          ],
        ),
      ),
    );
  }
}
