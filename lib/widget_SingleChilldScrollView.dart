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
  ScrollController scrollController = ScrollController();

  Body() {
    scrollController.addListener(() {
      print("scrollController: $scrollController");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          controller: scrollController,
          // physics: AlwaysScrollableScrollPhysics(),
          physics: BouncingScrollPhysics(),
          reverse: true,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16)),
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16)),
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16)),
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16)),
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(16)),
              ),
            ],
          ),
        ));
  }
}
