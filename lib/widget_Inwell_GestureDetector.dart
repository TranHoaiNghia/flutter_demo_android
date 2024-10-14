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
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.green,
        borderRadius: BorderRadius.circular(36),
        child: InkWell(
          onTap: () {
            print("InWell hehe");
          },
          borderRadius: BorderRadius.circular(36),
          child: Container(
              alignment: Alignment.center,
              height: 300,
              width: 300,
              // decoration: BoxDecoration(
              //     color: Colors.green, borderRadius: BorderRadius.circular(36)),
              child: Text(
                "Content",
                style: TextStyle(
                    color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
              )),
        ),
      ),
    );
  }
}

class Body2 extends StatelessWidget {
  const Body2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          print("GestureDetector hehe");
        },
        child: Container(
            alignment: Alignment.center,
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(36)),
            child: Text(
              "Content",
              style: TextStyle(
                  color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
