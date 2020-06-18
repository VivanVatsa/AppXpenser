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
      child: transactions.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  'No transactions Added yet!',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  // used as separators between 2 components in the application
                  height: 50,
                ),
                Container(
                    height: 200,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    )),
              ],
            )
          : ListView.builder(
              // must have attributes of the this current widget and to keep in mind that this has to be applied to all the widgets
              itemBuilder: (ctx, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: Padding(
                      padding: EdgeInsets.all(6),
                      child: FittedBox(
                        child: Text('\₹${transactions[index].amount}'),
                        ),
                    ),
                  ),
                  title: Text(
                    transactions[index].title,
                    style: Theme.of(context).textTheme.headline6,
                    ),
                  subtitle: Text(
                    DateFormat.yMMMd().format( transactions[index].date),
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
