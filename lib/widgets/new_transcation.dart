import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleInputController = TextEditingController();
  final amountInputController = TextEditingController();
  final Function submitHandler;
  NewTransaction(this.submitHandler);
  @override
  Widget build(BuildContext context) {
    return Card(child: Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text("New Transaction",style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                )),
                Container(
                  margin: EdgeInsets.all(5),
                  child: 
          TextField(
              controller: titleInputController,
              decoration:
                  InputDecoration(labelText: "Title", 
                                  prefixIcon: Icon(Icons.title) )),
                  
                ),
                 Container(
                  margin: EdgeInsets.all(5),
                  child: 
          TextField(
              controller: amountInputController,
              decoration: InputDecoration(
                  labelText: "Amount", 
                  prefixIcon: Icon(Icons.money),
      
                         )
                )
                  ),
                   Container(
                  margin: EdgeInsets.all(5),
                  child: 
          ElevatedButton(
            onPressed: () =>submitHandler(titleInputController.text, double.parse(amountInputController.text )),
            child: Text("Add Transation"),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.purpleAccent)),
          )),
        ],
      ),
    ));
  }
}
