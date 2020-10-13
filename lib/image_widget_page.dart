import 'package:flutter/material.dart';

class ImageWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget'),
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          width: 500,
          height: 500,
          margin: EdgeInsets.all(3),
          child: Image(
            image: AssetImage(
              "assets/img/60b0744f-c378-40c9-bc25-ad661159476d.jpg",
            ),
            fit: BoxFit.contain,
            repeat: ImageRepeat.repeat,
          ),
        ),
      ),
    );
  }
}
