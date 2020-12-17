import 'package:flutter/material.dart';
import 'package:flutter_new_forms/Activities/Home.dart';
import 'package:flutter_new_forms/Models/User.dart';

class Register extends StatefulWidget {
  static const ROUTE = "/register" ;

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String name , email , password ;
  var formKey = GlobalKey<FormState>() ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register Page" ,
         ),
         backgroundColor: Colors.orange , 
      ),
      body: Form(
        key: formKey ,
        child: Column(
          children: [
            // name field
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter your name" ,
              ),
              validator: (value){
                if (value.isEmpty) {
                  return "name required" ;
                }
                return null ;
              },
              onChanged: (value){
                name = value ;
              },
            ) ,

            //email field 
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter your email"
              ),
              validator: (value){
                if (value.isEmpty) {
                  return 'email required' ;
                }
                return null ;
              },
              onChanged: (value){
                email = value ;
              },
            ) ,

            // password field 
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter your password"
              ),
              validator: (value){
                if (value.isEmpty) {
                  return "password required" ;
                }
                return null ;
              },
              onChanged: (value){
                password = value ;
              },
            ) ,

            // register button 
            RaisedButton(
              child: Text(
                "register"
              ),
              onPressed: (){
                if (formKey.currentState.validate()) {
                  User user = new User(name: name, email: email, password: password) ;
                  Navigator.of(context).pushReplacementNamed(Home.ROUTE , arguments: user) ;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}