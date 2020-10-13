import 'package:flutter/material.dart';

class TextstylePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Text Style'),
      ),
      body: Center(
        child: Text(
          'Ini adalah text',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontStyle: FontStyle.italic,
            fontSize: 30,
            decoration: TextDecoration.overline,
            decorationColor: Colors.red,
            decorationThickness: 5,
            decorationStyle: TextDecorationStyle.wavy,
          ),
        ),
      ),
    );
  }
}
