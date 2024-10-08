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
      padding: EdgeInsets.all(20),
      child: ElevatedButton.icon(
        // TextButton, ElevatedButton, OutlinedButton
        onPressed: () {
          print("onprress");
        },
        icon: Icon(Icons.add_circle, size: 30),
        label: Text("Text icon button"),
        // child: Text(
        //   "Button",
        //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        // ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(20),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 16,
          shadowColor: Colors.orange,
          fixedSize: Size(200, 200),
          side: BorderSide(width: 8, color: Colors.white),
          // disabledBackgroundColor: Colors.grey
        ),
      ),
    );
  }
}
