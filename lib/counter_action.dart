import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CounterActions extends StatelessWidget {
  const CounterActions({
    super.key,
    required this.onIncrement,
    required this.onDecrement,
    required this.onIncrement2,
    required this.inDivide,
  });

  final VoidCallback onIncrement, onDecrement, onIncrement2, inDivide;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
          onPressed: onIncrement,
          tooltip: 'Increment',
          child: const Icon(Icons.plus_one),
        ),
        FloatingActionButton(
          onPressed: onIncrement2,
          tooltip: 'Increment by 2',
          child: const Icon(Icons.exposure_plus_2),
        ),
        FloatingActionButton(
          onPressed: inDivide,
          tooltip: 'Divide',
          child: const FaIcon(FontAwesomeIcons.divide),
        ),
        FloatingActionButton(
          onPressed: onDecrement,
          tooltip: 'Dicrement',
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
