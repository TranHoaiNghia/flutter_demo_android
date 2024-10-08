import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    ),
  ));
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      color: Colors.grey,
      child: Stack(
        alignment: Alignment.center,
        // textDirection: TextDirection.rtl,
        fit: StackFit.loose,
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
          Container(
            height: 300,
            width: 300,
            decoration:
            BoxDecoration(color: Colors.green, shape: BoxShape.circle),
          ),
          Container(height: 200, width: 200, color: Colors.blue),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(height: 100, width: 100, color: Colors.yellow),
          ),
          Positioned(
              top: 20,
              right: 20,
              child: Container(height: 500, width: 100, color: Colors.purple))
        ],
      ),
    );
  }
}
