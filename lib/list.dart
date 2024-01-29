import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  List<String> quotes = [
    'Nobady KNowns what to do with this list',
    'Take me Home where I belong',
    'I cant take it anymore'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.amber.shade700,
      ),
      body: Column(
        children: quotes.map((data) => Text(data)).toList(),
      ),
    );
  }
}
