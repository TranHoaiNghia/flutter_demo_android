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
      width: double.infinity,
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.all(20),
            color: Colors.yellow,
            elevation: 8,
            shadowColor: Colors.green,
            child: Column(
              children: [
                ListTile(
                  title: Text("Content"),
                  subtitle: Text("Sub content"),
                  leading: Icon(Icons.info),
                  trailing: Icon(Icons.navigate_next),
                  isThreeLine: true,
                  onTap: () {
                    print("OnTap hehe");
                  },
                ),
                Text("Text Content"),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.all(8),
                  child: TextButton(
                    child: Text("Done!"),
                    onPressed: () {

                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
