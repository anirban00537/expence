import 'package:expence/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  List<Transaction> transactions;
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 50,
      ),
      height: 300,
      child: transactions.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  "No transaction added yet",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[200]),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 100,
                  child: Image.asset(
                    "assets/images/waiting.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : SingleChildScrollView(
              child: Column(
                children: transactions
                    .map((tx) => Card(
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 15,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                ),
                                child: Text(
                                  '\$${tx.amount.toStringAsFixed(2)}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Theme.of(context).primaryColorDark,
                                  ),
                                ),
                                padding: EdgeInsets.all(10),
                              ),
                              //title and date colum
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  //this container is for title
                                  Container(
                                    child: Text(
                                      tx.title,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  //this container is for date
                                  Container(
                                    child: Text(
                                      DateFormat('dd-MM-yyyy').format(tx.date),
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
    );
  }
}
