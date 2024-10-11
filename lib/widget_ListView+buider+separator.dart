import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: Body2(),
      ),
    ),
  ));
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: ListView(
        //SingleChildScrollView + column/row
        padding: EdgeInsets.all(8),
        children: [
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(30)),
          ),
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(30)),
          ),
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(30)),
          ),
        ],
      ),
    );
  }
}

class Body2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: 300,
    //   child: ListView.builder(
    //     //SingleChildScrollView + column/row
    //     padding: EdgeInsets.all(8),
    //     itemCount: 20,
    //     itemBuilder: (context, index) {
    //       print("itemBuilder: $index");
    //       return Container(
    //       width: 300,
    //       height: 300,
    //       decoration: BoxDecoration(
    //           color: Colors.green, borderRadius: BorderRadius.circular(30)),
    //       child: Text("Item: $index"),
    //       alignment: Alignment.center,
    //     );
    //     },
    //   ),
    // );

    return Container(
      width: 300,
      child: ListView.separated(
        //SingleChildScrollView + column/row
        padding: EdgeInsets.all(8),
        itemCount: 20,
        itemBuilder: (context, index) {
          print("itemBuilder: $index");
          return Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(30)),
            child: Text("Item: $index"),
            alignment: Alignment.center,
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          print("separatorBuilder: $index");
          return Container(
            width: 300,
            height: 10,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(30)),
            // alignment: Alignment.center,
          );
        },
      ),
    );
  }
}
