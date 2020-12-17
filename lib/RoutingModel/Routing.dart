import 'package:flutter/material.dart';
import 'package:flutter_new_forms/Activities/Home.dart';
import 'package:flutter_new_forms/Activities/Register.dart';

var route = <String , WidgetBuilder>{
  Home.ROUTE : (context) => Home(),
  Register.ROUTE : (context) => Register() ,
} ;