import 'package:flutter/material.dart';

import 'quote.dart';

class CardWidget extends StatelessWidget {
  final Quote quote;
  final Function() delete;
  const CardWidget({super.key, required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text!,
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              quote.author!,
              style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
            ),
            SizedBox(
              height: 8,
            ),
            TextButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('Delete'))
          ],
        ),
      ),
    );
  }
}
