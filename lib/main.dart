import 'package:flutter/material.dart';
import 'package:practice_flutter/list.dart';

void main() {
  runApp(const MaterialApp(
    home: MyList(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int pointer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey.shade900,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fHww'),
              ),
            ),
            const Divider(
              height: 90,
              color: Colors.grey,
            ),
            const Text(
              'NAME',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  fontSize: 22,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Wali Azhar',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                    letterSpacing: 2.0,
                    fontSize: 28)),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Points LVL',
              style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '$pointer',
              style: const TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.amber,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'clubcyber18@gmsill.com',
                  style: TextStyle(fontSize: 22, color: Colors.grey),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            pointer += 1;
          });
        },
        backgroundColor: Colors.grey.shade700,
        child: const Icon(Icons.add),
      ),
    );
  }
}
