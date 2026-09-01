import 'package:flutter/material.dart';
import 'package:flutter_counter_app/counter_action.dart';

import 'counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Counter App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _onIncrement() {
    setState(() {
      _counter++;
    });
  }

  void _onDecrement() {
    setState(() {
      _counter--;
    });
  }

  void _onIncrement2() {
    setState(() {
      _counter += 2;
    });
  }

  void _onDivide() {
    setState(() {
      _counter = _counter ~/ 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return addActionButton(context);
  }

  Scaffold addActionButton(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(child: Counter(value: _counter)),
      floatingActionButton: CounterActions(
        onIncrement: _onIncrement,
        onDecrement: _onDecrement,
        onIncrement2: _onIncrement2,
        inDivide: _onDivide,
      ),
    );
  }
}
