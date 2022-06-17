import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: const <Widget>[
            Card(
              child: Text("chart"),
            ),
            Card(
              child: Text("list of tx"),
            )
          ],
        ),
      ),
    ));
  }
}
