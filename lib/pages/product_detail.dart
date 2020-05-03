import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final stal_detail_name;
  final stal_detail_pic;
  final stal_detail_oldprice;
  final stal_detail_price;

  ProductDetail({
    this.stal_detail_name,
    this.stal_detail_oldprice,
    this.stal_detail_price,
    this.stal_detail_pic,
  });
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orange,
        title: Text('item details'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: null),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: null)
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 270,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.stal_detail_pic),
              ),
              footer: new Container(
                color: Colors.white60,
                child: ListTile(
                  leading: new Text(widget.stal_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("\$${widget.stal_detail_oldprice}",
                        style: TextStyle(color: Colors.orange,decoration: TextDecoration.lineThrough),),
                      ),
                      Expanded(
                        child: new Text("\$${widget.stal_detail_price}",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title: new Text('customize'),
                      content: new Text('choose customizations'),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: new Text('close'),)
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("customize"),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),),
              ),
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text('qty'),
                          content: new Text('choose quantity'),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text('close'),)
                          ],
                        );
                      });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("qty"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.orange,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Order Now"),
                ),
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.orange), onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite_border,color: Colors.orange), onPressed: (){}),

            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("item description"),
            subtitle: new Text('sedjbf kewjf efwejkf efwekfj ffwekfj '),
          )
        ],
      ),
    );
  }
}

