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
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset(
            "assets/Images/testImage.jpg", width: 150, height: 150, fit: BoxFit.fill,)
        ],
      ),
    );
  }
}