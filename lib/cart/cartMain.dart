import 'package:commerce/cart/checkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:commerce/cart/productsView.dart';

class CartApp extends StatefulWidget {
  @override
  _CartAppState createState() => _CartAppState();
}

class _CartAppState extends State<CartApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(title:Text("කරත්තය"),
        
        ),
        body: TabBarView(children: <Widget>[
       ProductsView(),
       CartCheckout()
        ]),
      ),
    );
  }
}