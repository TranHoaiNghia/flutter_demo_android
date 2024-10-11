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
            color: Colors.yellow,
            shadowColor: Colors.green,
            elevation: 8,
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                ListTile(
                  title: Text("Title"),
                  subtitle: Text("Sub text title"),
                  leading: Icon(Icons.info),
                  trailing: Icon(Icons.navigate_next),
                  isThreeLine: true,
                  onTap: () {
                    print("hien onTap:");
                  },
                ),
                Text("Text content", style: TextStyle(
                  backgroundColor: Colors.blue
                ),),
                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.bottomRight,
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