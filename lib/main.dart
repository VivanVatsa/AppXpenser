import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './transaction.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.54,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              child: Container(
                color: Colors.blue,
                // width: 100,
                width: double.infinity,
                child: Text('CHART'),
              ),
              elevation: 5,
            ),
          ),

          Card(
            elevation: 10,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Title'),
                  ),
                TextField(
                  decoration: InputDecoration(labelText: 'Amount'),
                  ),
                  FlatButton(child: Text('Add Transaction'), 
                  textColor: Colors.purple,
                  onPressed: () {},)
                ],
              ),
            ),
          ),
          Column(
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
                      border: Border.all(
                        color: Colors.purple, 
                        width: 2
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                    child: Text(
                      '\$${tx.amount}' ,
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
                        fontSize: 16, fontWeight: FontWeight.bold,
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
                  ],),
                ],),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}