import 'package:flutter/material.dart';
import './models/transaction.dart';

void main() {
  runApp(const UikExpensesApp());
}

class UikExpensesApp extends StatelessWidget {
  const UikExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UikExpenses',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final _transactions = [
    Transaction(
      id: 't1',
      title: 'New Sport Tenis',
      value: 310.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Dinner at Mc Donalds',
      value: 49.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UikExpenses'),
        backgroundColor: Colors.cyan.shade300,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            child: Card(
              color:  Colors.cyan.shade300,
              child: const Text('Graphic'),
            ),
          ),
          const SizedBox(
            width: double.infinity,
            child: Card(
              child: Text('List'),
            ),
          ),
        ],
      ),
    );
  }
  
}
