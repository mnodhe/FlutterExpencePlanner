import 'package:intl/intl.dart';

import './transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: "t1", title: "new shoes", amount: 69.99, date: DateTime.now()),
    Transaction(
        id: "t2", title: "new car", amount: 100.99, date: DateTime.now()),
    Transaction(
        id: "t3", title: "new house", amount: 150.99, date: DateTime.now()),
  ];

  MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: const Card(
                color: Colors.blue,
                elevation: 5,
                child: Text("chart"),
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const TextField(
                      decoration: InputDecoration(labelText: "Title"),
                    ),
                    const TextField(
                      decoration: InputDecoration(labelText: "Amount"),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.purple,
                      ),
                      onPressed: () => {},
                      child: const Text("Add Transaction"),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: transactions
                  .map((e) => Card(
                        child: Row(children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.purple,
                              width: 2,
                            )),
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              '\$${e.amount}',
                              style: const TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.title,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                DateFormat.yMMMd().format(e.date),
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ]),
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    ));
  }
}
