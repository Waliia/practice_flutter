import 'package:flutter/material.dart';
import 'quote.dart';

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

  Widget quoteTemplates(quotes) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quotes.text,
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              quotes.author,
              style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }

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
        children: quotes.map((data) => quoteTemplates(data)).toList(),
      ),
    );
  }
}
