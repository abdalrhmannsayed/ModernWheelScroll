import 'package:flutter/material.dart';

class AMAndPM extends StatelessWidget {
  const AMAndPM({super.key, required this.isAtAm});

  final bool isAtAm;

  @override
  Widget build(BuildContext context) {
    return Text(
      isAtAm == true ? 'am' : 'pm',
      style: const TextStyle(
        fontSize: 40,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
