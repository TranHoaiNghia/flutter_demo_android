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
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          OutlinedButton(
              onPressed: () => openDatePicker(context),
              child: Text("Click Date Picker!!")),
          OutlinedButton(
              onPressed: () => openTimePicker(context),
              child: Text("Click Time Picker!!"))
        ],
      ),
    );
  }

  openDatePicker(BuildContext context) async {
    DateTime? date = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
      initialEntryMode: DatePickerEntryMode.input,
      confirmText: "confirmText",
      cancelText: "cancelText",
      errorFormatText: "errorFormatText",
      errorInvalidText: "errorInvalidText",
    );
    print(("openDatePicket hehe $date"));
  }

  openTimePicker(BuildContext context) {
    TimeOfDay? time;
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      print(("openTimePicker $value"));
      time = value;
    });
  }
}
