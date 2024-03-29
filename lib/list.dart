import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  List<Quote> quotes = [
    Quote(author: 'Wilson', text: 'Woh muhbat hyy kya jo chor dye'),
    Quote(author: 'John', text: 'Woh muhbat hy'),
    Quote(author: 'Talha', text: 'Tu dakh lye meri tarf sahaba'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.amber.shade700,
      ),
      body: Column(
        children: quotes
            .map((data) => CardWidget(
                  quote: data,
                  delete: () {
                    setState(() {
                      quotes.remove(data);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
