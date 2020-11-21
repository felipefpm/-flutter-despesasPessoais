import 'package:flutter/material.dart';
import 'package:new_project/models/transections.dart';

void main() {
  runApp(ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _transctions = [
    Transactions(
      id: 't1',
      title: 'Cinema',
      value: 80.15,
      date: DateTime.now(),
    ),
    Transactions(
      id: 't2',
      title: 'Lanche',
      value: 50.85,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Card(
              elevation: 5,
              child: Text('Lista de trasações'),
            ),
          ),
          Column(children: [
            ..._transctions.map((tr) {
              return Card(
                child: Text(tr.title),
              );
            }),
          ]),
        ],
      ),
    );
  }
}
