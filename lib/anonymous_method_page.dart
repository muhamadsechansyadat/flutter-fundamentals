import 'package:flutter/material.dart';
import 'package:navigation_fundamentals/listview_page.dart';

class AnonymousPage extends StatefulWidget {
  @override
  _AnonymousPageState createState() => _AnonymousPageState();
}

class _AnonymousPageState extends State<AnonymousPage> {
  String message = 'Ini adalah text';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anonymous Method'),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(message),
                RaisedButton(
                  child: Text('Tekan saya'),
                  onPressed: () {
                    setState(() {
                      message = 'Tombol sudah di tekan';
                    });
                  },
                )
              ],
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
                      return ListviewPage();
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
