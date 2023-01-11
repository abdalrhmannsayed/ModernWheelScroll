import 'package:flutter/material.dart';
import 'package:flutter_application_1/am_pm.dart';
import 'package:flutter_application_1/hours.dart';
import 'package:flutter_application_1/minute.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 320,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Hours
                SizedBox(
                  width: 70,
                  child: ListWheelScrollView.useDelegate(
                    physics: const FixedExtentScrollPhysics(),
                    itemExtent: 50,
                    diameterRatio: 1.2,
                    perspective: 0.005,
                    childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 13,
                      builder: (BuildContext context, int index) {
                        return Hours(hours: index);
                      },
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                // Minutes
                SizedBox(
                  width: 70,
                  child: ListWheelScrollView.useDelegate(
                    physics: const FixedExtentScrollPhysics(),
                    itemExtent: 50,
                    diameterRatio: 1.2,
                    perspective: 0.005,
                    childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 60,
                      builder: (BuildContext context, int index) {
                        return Minute(minute: index);
                      },
                    ),
                  ),
                ),

                const SizedBox(width: 15),

                // AM And PM
                SizedBox(
                  width: 70,
                  child: ListWheelScrollView.useDelegate(
                    physics: const FixedExtentScrollPhysics(),
                    itemExtent: 50,
                    diameterRatio: 1.2,
                    perspective: 0.005,
                    childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 2,
                      builder: (BuildContext context, int index) {
                        if (index == 0) {
                          return const AMAndPM(isAtAm: true);
                        } else {
                          return const AMAndPM(isAtAm: false);
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
