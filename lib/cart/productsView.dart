import 'dart:convert';

import 'package:flutter/material.dart';


class ProductsView extends StatefulWidget {
  @override
  _ProductsViewState createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  Widget build(BuildContext context) {


   Future<List<Widget>> createList() async {
      List<Widget> items = new List<Widget>();
      String dataString = await DefaultAssetBundle.of(context).loadString("assets/data.json");
      List<dynamic> jsonData = jsonDecode(dataString);

      jsonData.forEach((object) {
        String finalString = "";
        List<dynamic> dataList = object["placeItems"];
   dataList.forEach((object){
     finalString=finalString  + " | ";
   });
        items.add(Padding(
          padding: EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white54,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, spreadRadius: 1.0, blurRadius: 5.0)
                ]),
            child: Row(
              verticalDirection: VerticalDirection.down,
              mainAxisSize: MainAxisSize.max,

              children: <Widget>[

                ClipRRect(
                  
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  
                  child: Image.asset(
                  
                    object["placeImage"],
                    height: 60,
                    width: 60,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Text(object["placeName"]),
                    Text(
                      finalString,
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                      maxLines: 1,
                    ),
                    Text(
                      "   minOrder: ${object["minOrder"]}",
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                    
                  ],
                )
              ],
            ),
          ),
        ));
      });
      return items;
    }

return Scaffold(
      
      body: Container(
        
        child: (SafeArea(
          child: Column(
            
            
            children: <Widget>[
            
              
              Container(
                
                child: FutureBuilder(
                  future: createList(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListView(
                          primary: false,
                          shrinkWrap: true,
                          children: snapshot.data,
                        ),
                      );
                    } else {
                      return CircularProgressIndicator(backgroundColor:Colors.lime, );
                    }
                  },
                ),
              )
            ],
          ),
        )),
      ),   

    );


  }
 
}