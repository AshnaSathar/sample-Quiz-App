import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Score extends StatelessWidget {
  final int score;

  const Score({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    double percentage = score / 5;
    double insideround = percentage * 100;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(),
                  height: 350,
                  width: 400,
                  child: Center(
                    child: Text(
                      "Your Score is: $score/5",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: new CircularPercentIndicator(
                    radius: 130.0,
                    lineWidth: 20.0,
                    percent: percentage,
                    center: new Text(
                      "$insideround%",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30.0),
                    ),
                    progressColor: Color.fromARGB(209, 99, 12, 115),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 95,
                ),
                Text(
                  "THANK YOU!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
