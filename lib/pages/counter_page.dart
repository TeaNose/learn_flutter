import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void increaseCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Click the button to increase counter"),
            Text(_counter.toString(),
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 48,
                    fontWeight: FontWeight.bold)),
            ElevatedButton(
                onPressed: increaseCounter, child: Text("Increase Counter!"))
          ],
        ),
      ),
    );
  }
}
