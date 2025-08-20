import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter Screen'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text('Click${counter == 1 ? '' : 's'}', style: TextStyle(fontSize: 28)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter += 1;
          setState(() {});
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
