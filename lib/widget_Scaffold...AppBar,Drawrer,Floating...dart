import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Page(),
    ),
  ));
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              "Title_Text",
              style: TextStyle(color: Colors.white),
            )),
        backgroundColor: Colors.blue,
        elevation: 16,
        shadowColor: Colors.grey,
        // shape: OvalBorder(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
            color: Colors.white,
          ),
          PopupMenuButton(
            icon: Icon(
              Icons.share,
              color: Colors.white,
            ),
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(child: Text("FaceBook")),
              PopupMenuItem(child: Text("Instagram"))
            ],
          )
        ],
        leading: LeadingAppBar(),
      ),
      drawer: MainDrawer(),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shadowColor: Colors.cyanAccent,
      backgroundColor: Colors.green,
      elevation: 32,
      child: ListView(
        children: [
          DrawerHeader(
            child: Text("Header"),
            decoration: BoxDecoration(color: Colors.cyan),
          ),
          ListTile(
            title: Text("Menu1"),
            trailing: Icon(Icons.menu_open),
          ),
          ListTile(
            title: Text("Menu1"),
            trailing: Icon(Icons.menu_open),
          ),
          ListTile(
            title: Text("Menu1"),
            trailing: Icon(Icons.menu_open),
          )
        ],
      ),
    );
  }
}

class LeadingAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.menu),
      color: Colors.white,
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    );
  }
}
