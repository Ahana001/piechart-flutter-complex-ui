import 'package:flutter/material.dart';
import 'package:ui_flutter/configuration/configuration.dart';
import 'package:ui_flutter/widgets/CardSection.dart';
import 'package:ui_flutter/widgets/expenses.dart';
import 'package:ui_flutter/widgets/walletHeader.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Circular',
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(height: 120, child: WalletHeader()),
          Expanded(child: CardSection()),
          Expanded(child: Expenses())
        ],
      ),
    );
  }
}
