import "package:flutter/material.dart";

class Chart extends StatefulWidget {
  @override
  createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: 
    Card(
      
      child: Row(children:[
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [Text("64 SDG"),Container( height: 100, child: Card (color: Colors.grey,  child: Container(color: Color.fromARGB(255, 99, 96, 90) , width: 20, height: 50, child: Text(" ")), elevation: 5)),Text("S")],),
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [Text("56 SDG"),Container( height: 100, child: Card (color: Colors.grey,  child: Container(color: Color.fromARGB(255, 54, 54, 53) , width: 20, height: 40, child: Text(" ")), elevation: 5)),Text("M")],),
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [Text("22 SDG"),Card (color: Colors.grey,  child: Container(color: Colors.amber , width: 20, height: 20, child: Text(" ")), elevation: 5),Text("T")],),
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [Text("58 SDG"),Card (color: Colors.grey,  child: Container(color: Colors.amber , width: 20, height: 22, child: Text(" ")), elevation: 5),Text("W")],),
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [Text("75 SDG"),Card (color: Colors.grey,  child: Container(color: Colors.amber , width: 20, height: 50, child: Text(" ")), elevation: 5),Text("TH")],),
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [Text("80 SDG"),Card (color: Colors.grey,  child: Container(color: Colors.amber , width: 20, height: 30, child: Text(" ")), elevation: 5),Text("F")],),
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [Text("55 SDG"),Card (color: Colors.grey,  child: Container(color: Colors.amber , width: 20, height: 110, child: Text(" ")), elevation: 5),Text("S")],),
      
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
    ),
      );
  }
}
