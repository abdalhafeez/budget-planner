import 'package:flutter/material.dart';
import './transactions_list.dart';
import '../models//transations.dart';
import './new_transcation.dart';

class UserTransactionsList extends StatefulWidget {
  @override
  State<UserTransactionsList> createState() => _UserTransactionsListState();
}

class _UserTransactionsListState extends State<UserTransactionsList> {
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
        date: DateTime.now())
  ];
  void _AddingNewTransaction(String newTxtitle, double newTxamount) {
    final newTrans = Transactions(
        id: DateTime.now().toString(),
        title: newTxtitle,
        amount: newTxamount,
        date: DateTime.now());
    setState(() {
      _userTransations.add(newTrans);
    });
  }

  void deleteTransaction(int id) {
    for (var i = 0; i < _userTransations.length; i++) {
    }
      print(id);
      _userTransations.removeAt(id);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
          child: Column(children: <Widget>[
        NewTransaction(_AddingNewTransaction),
        TransactionsList(_userTransations)
      ])),
    );
  }
}
