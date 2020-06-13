import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_flutter/configuration/configuration.dart';

class PieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 230,
        width: 300,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: customShadow,
            color: Colors.white30),
        child: Stack(children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            height: 230,
            width: 300,
            child: CustomPaint(
              child: Container(),
              foregroundPainter: PieChartPainter(),
            ),
          ),
          Center(
            child: Container(
              height: 90,
              width: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: customShadow,
                  color: primaryColor),
            ),
          )
        ]));
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;
    double total = 0;
    var starRadius = -pi / 2;

    expenses.forEach((element) {
      total += element['amount'];
    });

    for (int i; i < expenses.length; i++) {
      var currentexpense = expenses[i];
      var sweepRadius = currentexpense['amount'] / total * 2 * pi;
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          starRadius, sweepRadius, false, paint);
      starRadius += sweepRadius;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
