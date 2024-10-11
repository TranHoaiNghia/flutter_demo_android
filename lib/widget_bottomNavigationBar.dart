import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Page1(),
    ),
  ));
}

class Page1 extends StatefulWidget {
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        Container(
          child: Text("Home"),
        ),
        Container(
          child: Text("Settings"),
        )
      ][selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.settings), label: Text("2")),
            label: "Settings",
          ),
        ],
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
            print("SelectedIndex hehe: $selectedIndex");
          });
        },
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          children: [
            NavigationRail(
              selectedIndex: selectedIndex,
              destinations: [
                NavigationRailDestination(
                    icon: Icon(Icons.home), label: Text("Home")),
                NavigationRailDestination(
                  icon: Badge(child: Icon(Icons.settings), label: Text("2")),
                  label: Text("Settings"),
                )
              ],
              onDestinationSelected: (value) {
                setState(() {
                  selectedIndex = value;
                  print("selectedIndexPage2: $selectedIndex");
                });
              },
            ),
            [
              Container(
                child: Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              Container(
                child: Text("Settings", style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
                ),
              ),
            ][selectedIndex]
          ],
        ));
  }
}
