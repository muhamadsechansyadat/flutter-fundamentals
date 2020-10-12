import 'package:flutter/material.dart';
import 'package:navigation_fundamentals/container_page.dart';

class RowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Row & Column'),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Text 1'),
              Text('Text 2'),
              Text('Text 3'),
              Row(
                children: <Widget>[
                  Text('Text 4'),
                  Text('Text 5'),
                  Text('Text 6'),
                ],
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
                      return ContainerPage();
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
