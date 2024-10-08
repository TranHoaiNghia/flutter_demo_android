import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Scaffold(
        body: Body2(),
      ),
    ),
  ));
  ;
}

class Body extends StatelessWidget {
  String textValue = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(onChanged: (value) {
            print("onChanged: $value");
            textValue = value;
          }),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Send",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                backgroundColor: Colors.red,
                elevation: 16,
                shadowColor: Colors.blue),
          ),
          Text(textValue)
        ],
      ),
    );
  }
}

class Body2 extends StatefulWidget {
  const Body2({super.key});

  @override
  State<Body2> createState() => _Body2State();
}

class _Body2State extends State<Body2> {
  String textValue = "";

  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    textEditingController.addListener(() {
      setState(() {
        textValue = textEditingController.text.toUpperCase();
      });
      print("onChanged: $textValue");
    });

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: textEditingController,
            autofocus: true,
            textAlign: TextAlign.start,
            textDirection: TextDirection.ltr,
            textInputAction: TextInputAction.search,
            textCapitalization: TextCapitalization.words,
            style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold,
            ),
            cursorColor: Colors.blue,
            cursorWidth: 10,
            // cursorHeight: 5,
            cursorRadius: Radius.circular(8),
            // maxLines: 5,
            // obscureText: true,
            maxLength: 500,
            decoration: InputDecoration(
              icon: Icon(Icons.search),
              iconColor: Colors.redAccent,
              prefixIcon: Icon(Icons.heart_broken_sharp),
              prefix: Text("Heart broken "),
              suffix: Icon(Icons.add_circle),
              hintText: "Người yêu cũ",
              hintStyle: TextStyle(fontStyle: FontStyle.italic),
              helperText: "helper text",
              label: Icon(Icons.accessibility_sharp, color: Colors.red,),
              // labelText: "lable",
              border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16)
              )
            ),

            // decoration: null,

            // decoration: InputDecoration.collapsed(hintText: "hint"),

            // decoration: InputDecoration(
            //   labelText: "lable",
            //   border: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(16)
            //   )
            // ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Send",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                backgroundColor: Colors.red,
                elevation: 16,
                shadowColor: Colors.blue),
          ),
          Text(textValue, style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}
