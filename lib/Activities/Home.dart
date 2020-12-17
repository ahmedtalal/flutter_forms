import 'package:flutter/material.dart';
import 'package:flutter_new_forms/Models/User.dart';

class Home extends StatefulWidget {
  static const ROUTE  = "/home" ;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    User user = ModalRoute.of(context).settings.arguments ;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page" ,
         ),
         backgroundColor: Colors.orange , 
      ),
      body: Center(
        child: Column(
          children: [
            //name field
            Text(
              "your name is ${user.name}"
            ),

            // email field
            Text(
              "your email is ${user.email}"
            ) ,

            // password field 
            Text(
              "your password is ${user.password}"
            ) ,
          ],
        ),
      ),
    );
  }
}