import 'package:flutter/material.dart';

class Minute extends StatelessWidget {
  const Minute({super.key, required this.minute});

  final int minute;

  @override
  Widget build(BuildContext context) {
    return Text(
      minute < 10 ? '0$minute' : minute.toString(),
      style: const TextStyle(
        fontSize: 40,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
