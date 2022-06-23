import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionsList extends StatelessWidget {
  final transactions;
  TransactionsList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          children: [
            Text("Your Transations",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                )),
            Container(
              height: 300,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: ListView.builder(
                  itemCount: transactions.length,
                  itemBuilder:(ctx, index){
                    return Card(
                      
                        margin: EdgeInsets.all(5),
                        child: Container(
                            padding: EdgeInsets.all(5),
                            width: double.infinity,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                      color: Colors.purple,
                                      width: 2,
                                    )),
                                    child: Text(
                                      transactions[index].amount.toString(),
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 3),
                                          child: Text(transactions[index].title,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 3),
                                            child: Text(
                                                DateFormat("yyyy-MM-dd")
                                                    .format(transactions[index].date),
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    overflow:
                                                        TextOverflow.fade))),
                                      ]),
                                  Row(
                                    children: [
                                      Card(
                                        shadowColor: Colors.purple,
                                        elevation: 2,
                                        child: Icon(
                                          Icons.delete,
                                          size: 30,
                                          color: Colors.red,
                                        ),
                                      ),
                                      Card(
                                        shadowColor: Colors.purple,
                                        elevation: 2,
                                        child: Icon(
                                          Icons.edit,
                                          size: 30,
                                          color: Colors.blue,
                                        ),
                                      )
                                    ],
                                  ),
                                ])));
                   
                  }
                  // children: transactions.map((tx) {
                  //  }).toList(),
                )),
          ],
        ));
  }
}
