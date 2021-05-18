import 'package:commerce/signup/signupPassword.dart';
import 'package:commerce/signup/signupUser.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
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
         
         SignupUser(Icon(Icons.person,color:Colors.white,)),
         SignupPassword(Icon(Icons.vpn_key,color:Colors.white,)),
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