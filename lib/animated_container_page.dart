import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: AnimatedContainer(
                color: Color.fromARGB(
                  255,
                  random.nextInt(256),
                  random.nextInt(256),
                  random.nextInt(256),
                ),
                duration: Duration(seconds: 1),
                width: 50.0 + random.nextInt(101),
                height: 50.0 + random.nextInt(101),
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
                      return AnimatedContainerPage();
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
