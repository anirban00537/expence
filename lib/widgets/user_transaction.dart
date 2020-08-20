import 'package:expence/models/transaction.dart';
import 'package:flutter/cupertino.dart';

import 'new_transaction.dart';
import 'transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
//        NewTansaction(_addNewTransaction),
        //transaction lists are here,
        // TransactionList(_usersTransactions),
      ],
    );
  }
}
