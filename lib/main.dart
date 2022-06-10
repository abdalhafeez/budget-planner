 import 'package:first_app/widgets/user_transations.dart';
import 'package:flutter/material.dart';
 // import "./assets/2.jpg";

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Pharma",
        theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            primarySwatch: Colors.purple),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
              
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[Text("Budget Planner"), Text("WPL")])),
        body: UserTransactionsList()
     
       );
  }
}
