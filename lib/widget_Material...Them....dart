import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MaterialApp title on",
      theme: AppTheme.lighTheme,
      darkTheme: AppTheme.darkTheme,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                "Title_Text",
                style: TextStyle(color: Colors.white),
              ),
            ),
            backgroundColor: Colors.blue,
            elevation: 12,
            shadowColor: Colors.grey,
            actions: [
              PopupMenuButton(
                icon: Icon(
                  (Icons.share),
                  color: Colors.white,
                ),
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem(
                    child: Text("Facebook"),
                  ),
                  PopupMenuItem(
                    child: Text("Instagram"),
                  ),
                ],
              )
            ],
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              color: Colors.white,
            ),
          ),
          body: Body(),
        ),
      )));
}

class AppTheme {
  static ThemeData lighTheme = ThemeData(
      brightness: Brightness.light,
      colorSchemeSeed: Colors.blue,
      useMaterial3: true,
      textTheme: textTheme);

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      colorSchemeSeed: Colors.yellow,
      useMaterial3: true,
      textTheme: textTheme);

  static TextTheme textTheme = TextTheme(
      bodyLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold));
}

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int sex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: Text("Button")),
          SizedBox(
            height: 30,
          ),
          OutlinedButton(onPressed: () {}, child: Text("Button")),
          SizedBox(
            height: 30,
          ),
          Text("Text", style: Theme.of(context).textTheme.bodyLarge),
          Text("Text", style: Theme.of(context).textTheme.bodySmall),
          Text("Text nomal"),
          SizedBox(
            height: 30,
          ),
          Checkbox(
            value: true,
            onChanged: (value) {},
          ),
          CheckboxListTile(
            value: true,
            onChanged: (value) {},
            title: Text("CheckboxListTile"),
            controlAffinity: ListTileControlAffinity.leading,
          ),
          RadioListTile(
            value: 0,
            groupValue: sex,
            onChanged: (value) {
              setState(() {
                sex = value ?? 0;
              });
              print("value ne $value");
            },
            title: Text("Male"),
          ),
          RadioListTile(
            value: 1,
            groupValue: sex,
            onChanged: (value) {
              setState(() {
                sex = value ?? 0;
              });
              print("value ne $value");
            },
            title: Text("Female"),
          )
        ],
      ),
    );
  }
}
