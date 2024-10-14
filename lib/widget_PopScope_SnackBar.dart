import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Page(),
      )));
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        print("hien didpop $didPop");
        if (!didPop) {
          SnackBar snackBar = SnackBar(
            content: Text("Some content"),
            backgroundColor: Colors.red,
            action: SnackBarAction(
              label: "Action!",
              onPressed: () {
                print("Action log!!!");
              },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: Scaffold(
        body: Center(
          child: Text("hello world"),
        ),
      ),
    );
  }
}
