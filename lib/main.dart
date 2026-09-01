import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _dicrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter += 2;
    });
  }

  void _divideCounter() {
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
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.plus_one),
          ),
          FloatingActionButton(
            onPressed: _incrementCounter2,
            tooltip: 'Increment by 2',
            child: const Icon(Icons.exposure_plus_2),
          ),
          FloatingActionButton(
            onPressed: _divideCounter,
            tooltip: 'Divide',
            child: const FaIcon(FontAwesomeIcons.divide),
          ),
          FloatingActionButton(
            onPressed: _dicrementCounter,
            tooltip: 'Dicrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
