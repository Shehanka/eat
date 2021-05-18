import 'package:flutter/material.dart';

class SignupUser extends StatelessWidget {

Icon fieldIcon;
  SignupUser(this.fieldIcon);
  @override
  Widget build(BuildContext context) {
    return Container(
                  width: 250,
                  
             child: Material(
                elevation: 1.0,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.transparent,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Padding(
                       padding: 
                       const EdgeInsets.all(8.0),
                     child: fieldIcon
                     ),
          
                   Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),bottomRight:Radius.circular(10.0)),
                       color:Colors.white,

                     ),
                     width: 200,
                     child:Padding(padding: 
                    const EdgeInsets.all(8.0),
                     child: TextField(
                 decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "පරිශීලක නාමය",
                   fillColor: Colors.white,
                   filled: true
                   
                 ),
                  style:TextStyle(
                    fontSize:15.0,
                    color: Colors.black,
                  )
                )
                    ),
                  
                   )
                 ],)
           
                ),
                );

  }
}