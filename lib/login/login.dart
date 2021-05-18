
import 'package:flutter/material.dart';
import 'package:commerce/login/loginUser.dart';
import 'package:commerce/login/loginPassword.dart';

class Login extends StatelessWidget {

  Widget build(BuildContext context) {    
    return Scaffold(
      
    body: Container(
      width:MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.blue[300],
      child: Center(
     
      child: Container(
     width: 300,
   height: 200,
     child: Column(
       mainAxisAlignment:MainAxisAlignment.spaceEvenly,
       children:<Widget>[
         
         LoginUser(Icon(Icons.person,color:Colors.white,)),
         LoginPassword(Icon(Icons.vpn_key,color:Colors.white,)),
 
         Center(
           child: Container(
             width: 100,
          
  child:RaisedButton(
    onPressed: (){},
    color: Colors.transparent,
    child: Text("ඇතුල්වීම",
    style: TextStyle(fontSize: 10.0),
    textAlign: TextAlign.justify,
    ),
    
    ),
   
           ),
         ),
       
       
       ]
      
     ),
        ),
      ),
    ),
    
    );

  }


}