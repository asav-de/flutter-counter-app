import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({super.key, required this.value, this.text = 'You have pushed the button this many times:'});

  final int value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      children: [
        Text(text),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              '$value',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
      ],
    );
  }
}
