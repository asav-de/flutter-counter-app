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
        CastomButton(
          onPressed: onIncrement, 
          icon: Icon(Icons.plus_one)
          ),
        CastomButton(
          onPressed: onDecrement,
          icon: Icon(Icons.exposure_minus_1),
        ),
        CastomButton(
          onPressed: onIncrement2,
          icon: Icon(Icons.exposure_plus_2),
        ),
        CastomButton(
          onPressed: inDivide, 
          icon: FaIcon(FontAwesomeIcons.divide)
          ),
      ],
    );
  }
}

class CastomButton extends StatelessWidget {
  const CastomButton({
    super.key,
    required this.onPressed,
    this.tooltipText,
    required this.icon,
  });

  final VoidCallback onPressed;
  final String? tooltipText;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltipText ?? '',
      waitDuration: Duration(seconds: 1),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: const Color.fromARGB(255, 185, 92, 5),
        ),
        onPressed: onPressed,
        child: icon,
      ),
    );
  }
}
