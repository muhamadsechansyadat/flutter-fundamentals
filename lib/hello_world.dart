import 'package:flutter/material.dart';
import 'package:navigation_fundamentals/row_column.dart';

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'Hello World',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment(0.85, 0.87),
            child: RaisedButton(
              child: Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RowColumn();
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
