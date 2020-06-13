import 'package:flutter/material.dart';
import 'package:ui_flutter/configuration/configuration.dart';
import 'package:ui_flutter/widgets/pieChart.dart';

class Expenses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "expenses",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                    children: expenses
                        .map((value) => Container(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor:
                                        pieColors[expenses.indexOf(value)],
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    value['name'],
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ))
                        .toList()),
              ),
              Expanded(
                child: PieChart(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
