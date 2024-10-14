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
      child: Column(
        children: [
          OutlinedButton(
              onPressed: () {
                openShowDialog(context);
              },
              child: Text("Show Dialog")),
          OutlinedButton(
              onPressed: () => openShowBottomSheet(context),
              child: Text("Show Bottom Sheet"))
        ],
      ),
    );
  }

  void openShowDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("chao buoi sang tot lanh!",
              style: TextStyle(color: Colors.white)),
          content: Text("Hom nay ban thay the nao!!",
              style: TextStyle(color: Colors.white)),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Oke ko sao",
                  style: TextStyle(color: Colors.white),
                )),
            TextButton(
                onPressed: () {},
                child: Text("Quyet tam hon",
                    style: TextStyle(color: Colors.white))),
          ],
          shadowColor: Colors.blue,
          // shape: CircleBorder(),
          elevation: 16,
          backgroundColor: Colors.red,
        ));
  }

  openShowBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      // isScrollControlled: true,
      // scrollControlDisabledMaxHeightRatio: 0.9,
      barrierColor: Colors.green,
      builder: (context) => Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(16))
        ),
        child: Column(
          children: [
            Text(('data1')),
            Text(('data1')),
            Text(('data1')),
            Text(('data1')),
            Text(('data1')),
            Text(('data1')),


          ],
        ),
      ),
    );
  }
}
