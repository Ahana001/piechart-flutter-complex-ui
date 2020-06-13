import 'package:flutter/material.dart';
import 'package:ui_flutter/configuration/configuration.dart';

class CardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'images/wallet.png',
          width: 100,
          alignment: Alignment.topLeft,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Container(
              height: 50,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: customShadow,
                  color: primaryColor),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          boxShadow: customShadow,
                          color: Colors.white30),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 15, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "**** **** ****",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "1930",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              Text("PLATINUM CARD",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ],
    );
  }
}
