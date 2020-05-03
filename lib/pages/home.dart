import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_app/components/horizontal_listview.dart';
import 'package:flutter_app/components/stalls.dart';
import 'package:flutter_app/pages/cart.dart';

import 'package:flutter_app/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel=new Container(
      height: 200,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/carousel/1.jpg'),
          AssetImage('assets/carousel/2.jpeg'),
          AssetImage('assets/carousel/3.jpg'),
          AssetImage('assets/carousel/4.jpg'),
          AssetImage('assets/carousel/5.jpg'),
          AssetImage('assets/carousel/6.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 6,
        indicatorBgPadding: 4,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orange,
        title: Text('Ecom app'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: null),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));
              })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Rohit D'),
              accountEmail: Text('rohit@devrushi.com'),
              currentAccountPicture: GestureDetector(
                child:new CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person,color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.orange,
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home,color: Colors.blue,),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.account_circle,color: Colors.blue,),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket,color: Colors.blue,),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard,color: Colors.blue,),
              ),
            ),
            Divider(),
            InkWell(
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.blue,),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text('About us'),
                leading: Icon(Icons.help,color: Colors.blue,),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          new Padding(
            padding: const EdgeInsets.all(8),
            child: new Text('Categories'),
          ),
          HorizontalList(),
          new Padding(
            padding: const EdgeInsets.all(8),
            child: new Text('Categories'),
          ),
          Container(
            height: 320,
            child: Stalls(),
          ),
        ],
      ),
    );
  }
}