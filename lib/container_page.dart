import 'package:flutter/material.dart';
import 'package:navigation_fundamentals/stateful_page.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Container'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.red,
            margin: EdgeInsets.fromLTRB(10, 15, 20, 25),
            padding: EdgeInsets.only(
              bottom: 20,
              top: 20,
            ),
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.amber,
                    Colors.blue,
                  ],
                ),
              ),
            ),
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
                      return StatefulPage();
                    },
                  ),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment(-0.85, 0.87),
            child: RaisedButton(
              child: Text(
                'Back',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlue,
              onPressed: () {
                Navigator.pop(
                  context,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
