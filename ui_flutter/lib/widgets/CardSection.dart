import 'package:flutter/material.dart';
import 'package:ui_flutter/configuration/configuration.dart';
import 'package:ui_flutter/widgets/CardDetails.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topLeft,
          child: Text(
            'Selected Card',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      boxShadow: customShadow,
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        left: -300,
                        top: -100,
                        bottom: -100,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white38,
                            boxShadow: customShadow,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        top: 100,
                        bottom: -200,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white38,
                            boxShadow: customShadow,
                          ),
                        ),
                      ),
                      CardDetails()
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
