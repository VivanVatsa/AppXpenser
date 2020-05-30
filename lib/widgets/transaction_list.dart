import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  final List<Transaction> transactions;
  
  TransactionList(this.transactions);

Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tx) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 2),
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  '\$${tx.amount}',
                  // + tx.amount.toString()
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Container(
                  //   margin: EdgeInsets.symmetric(
                  //     vertical: 15,
                  //     horizontal: 25,
                  //   ),
                  // )
                  Text(
                    tx.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    // DateFormat('yyyy/MM/dd').format(tx.date),
                    // DateFormat.yMMMd().add_jms().format(tx.date),
                    DateFormat.yMMMd().format(tx.date),
                    // DateFormat().format(tx.date),
                    // tx.date.toString(),
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  
  // State<StatefulWidget> createState() {
  
  //   throw UnimplementedError();
  // }


  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
