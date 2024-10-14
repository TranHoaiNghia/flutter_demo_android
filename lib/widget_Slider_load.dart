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

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double sliderValue = 0.5;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RefreshIndicator(
        onRefresh: () async {

        },
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 16,
              ),
              CircularProgressIndicator(
                strokeWidth: 10,
              ),
              Container(
                height: 16,
              ),
              CircularProgressIndicator(
                value: 0.5,
                color: Colors.red,
                strokeWidth: 5,
                backgroundColor: Colors.greenAccent,
                strokeAlign: BorderSide.strokeAlignOutside,
              ),
              Container(height: 16, color: Colors.blue),
              LinearProgressIndicator(),
              Container(
                height: 16,
              ),
              Slider(
                min: 0,
                max: 2,
                label: sliderValue.toString(),
                divisions: 10,
                value: sliderValue,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
              RangeSlider(values: RangeValues(0.2, 0.7), onChanged: (value) {

              },)
            ],
          ),
        ),
      ),
    );
  }
}
