import 'package:flutter/material.dart';

class Hours extends StatelessWidget {
  const Hours({super.key, required this.hours});

  final int hours;

  @override
  Widget build(BuildContext context) {
    return Text(
      hours.toString(),
      style: const TextStyle(
        fontSize: 40,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
