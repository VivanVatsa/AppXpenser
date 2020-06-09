import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
//   @override
//   _TransactionListState createState() => _TransactionListState();
// }

// class _TransactionListState extends State<TransactionList>
// {
  final List<Transaction> transactions;

  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        // must have attributes of the this current widget and to keep in mind that this has to be applied to all the widgets
        itemBuilder: (ctx, index){
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
                      //by adding the tostringasfixed property which rounds off the value entered in the amount
                      '\$${transactions[index].amount.toStringAsFixed(2)}',
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
                        transactions[index].title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        // DateFormat('yyyy/MM/dd').format(tx.date),
                        // DateFormat.yMMMd().add_jms().format(tx.date),
                        DateFormat.yMMMd().format(transactions[index].date),
                        // DateFormat().format(tx.date),
                        // tx.date.toString(),
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            );

        },
        itemCount: transactions.length,
        ),
    );
  }
}
/*
class TransactionList extends StatefulWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  Widget build(BuildContext context) {
    return 
  }

}
*/
