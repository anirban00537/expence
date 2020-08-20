import 'package:flutter/material.dart';

class NewTansaction extends StatefulWidget {
  final Function addTransaction;
  NewTansaction(this.addTransaction);

  @override
  _NewTansactionState createState() => _NewTansactionState();
}

class _NewTansactionState extends State<NewTansaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enteredText = titleController.text;
    final enteredAmount = double.parse(amountController.text);
    if (enteredText.isEmpty || enteredAmount <= 0) {
      return;
    }
    widget.addTransaction(
      enteredText,
      enteredAmount,
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: "Title",
                ),
                controller: titleController,
                onSubmitted: (_) => submitData(),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Amount",
                ),
                controller: amountController,
                keyboardType: TextInputType.number,
                onSubmitted: (_) => submitData(),
              ),
              FlatButton(
                onPressed: () => {submitData()},
                child: Text("Add Transaction"),
                textColor: Colors.white,
                color: Colors.purple[300],
              )
            ],
          ),
        ),
      ),
    );
  }
}
