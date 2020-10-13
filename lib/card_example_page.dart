import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            buildCard(Icons.account_balance, "Account Balance"),
            buildCard(Icons.account_balance_wallet, "Account Balance Wallet"),
          ],
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String textData) {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Icon(
              iconData,
              size: 50,
            ),
          ),
          Text(
            textData,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
