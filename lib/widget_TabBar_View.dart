import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Page(),
    ),
  ));
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tap_demo"),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.home, color: Colors.blue,),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.car_rental_rounded, color: Colors.red,),
                text: "Car_Oder",
              ),
              Tab(
                icon: Icon(Icons.heart_broken, color: Colors.grey,),
                text: "Heart_Broken",
              ),
              Tab(
                icon: Icon(Icons.add_shopping_cart, color: Colors.blue,),
                text: "Cart",
              ),
              Tab(
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.settings, color: Colors.green,),
                      Text("cubin"),
                      SizedBox(width: 10,)
                    ],
                  ),
                ),
              ),
              Tab(
                icon: Icon(Icons.home, color: Colors.blue,),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.car_rental_rounded, color: Colors.red,),
                text: "Car_Oder",
              ),
              Tab(
                icon: Icon(Icons.heart_broken, color: Colors.grey,),
                text: "Heart_Broken",
              ),
              Tab(
                icon: Icon(Icons.add_shopping_cart, color: Colors.blue,),
                text: "Cart",
              ),
              Tab(
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.settings, color: Colors.green,),
                      Text("cubin"),
                      SizedBox(width: 10,)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        body: Center(
          child: TabBarView(
            children: [
              FirstCreen(),
              SecondCreen(),
              ThirdScreen(),
              FirstCreen(),
              SecondCreen(),
              ThirdScreen(),
              FirstCreen(),
              SecondCreen(),
              ThirdScreen(),
              FirstCreen()
            ],
          ),
        ),
      ),
    );
  }
}

class FirstCreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("First_Screen_Demo"),
    );
  }
}

class SecondCreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Second_Screen_Demo"),
    );
  }
}


class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Third_Screen_Demo"),
    );
  }
}

