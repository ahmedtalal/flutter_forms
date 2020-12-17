import 'package:flutter/material.dart';
import 'package:flutter_new_forms/Activities/Register.dart';
import 'package:flutter_new_forms/RoutingModel/Routing.dart';

main(List<String> args) {
  runApp(App()) ;
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Register.ROUTE ,
      routes: route ,
    );
  }
}