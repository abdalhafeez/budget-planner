
import './widgets/chart.dart';
import './models/transations.dart';
import './widgets/new_transcation.dart';
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
          primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Transactions> _userTransations = [
    Transactions(
        id: DateTime.now().toString(),
        title: "buying a New car",
        amount: 35600,
        date: DateTime.now()),
    Transactions(
        id: DateTime.now().toString(),
        title: "paying uni fees for the last term",
        amount: 5000,
        date: DateTime.now()
  )
  ];
  void _AddingNewTransaction(String newTxtitle, double newTxamount) {
    final newTrans = Transactions(
        id: DateTime.now().toString(),
        title: newTxtitle,
        amount: newTxamount,
        date: DateTime.now(),
        );
    setState(() {
      _userTransations.add(newTrans);
    });
  }

  void showForm(BuildContext ctx) {
    showModalBottomSheet(
         context: ctx,
        builder: (builderCtx) {
          return GestureDetector(
            onTap: (){},
            behavior: HitTestBehavior.opaque,
            child: NewTransaction(_AddingNewTransaction));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add), onPressed: ()=>showForm(context)),
          ],
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[Text("Peronal Expense Manager")])),
      body:   Container(child:
       SingleChildScrollView(
          child: Column(children: <Widget>[
        // TransactionsList(_userTransations)
        Chart()
        // Container(child:
        //  Card(child:
        //  Column(children:
        //   [
        //     Text("You dont Have Transactions",
        //      style: TextStyle(
        //       color: Colors.purple,
        //       fontSize: 20,
        //       fontWeight: FontWeight.bold,
        //       ),),

        //    Container(
        //    child: Image.asset("assets/images/2.jpeg"))
        //    ],
        //    mainAxisAlignment:MainAxisAlignment.center,
        //    ),
        //    ),
        //    margin: EdgeInsets.all(50), 
        //    ),
     
      ]),),
    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: ()=>showForm(context)
    ));
  }
}
