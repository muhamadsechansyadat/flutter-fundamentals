import 'package:flutter/material.dart';

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
      body: Center(
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
    );
  }
}
