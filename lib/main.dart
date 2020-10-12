import 'package:flutter/material.dart';
import 'package:navigation_fundamentals/hello_world.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HelloWorld(),
    );
  }
}
