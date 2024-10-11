import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: Body2(),
      ),
    ),
  ));
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(10),
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      // childAspectRatio: 1 / 0.5,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(16)),
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(16)),
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(16)),
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(16)),
        ),
      ],
    );
  }
}

class Body2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 100,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(16)),
      ),
      itemCount: 10,
    );
  }
}

class Body3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      padding: EdgeInsets.all(10),
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      maxCrossAxisExtent: 150,
      childAspectRatio: 1 / 0.5,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(16)),
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(16)),
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(16)),
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(16)),
        ),
      ],
    );
  }
}

class Body4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.custom(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100, crossAxisSpacing: 10, mainAxisSpacing: 10),
        childrenDelegate: SliverChildBuilderDelegate(
          childCount: 10,
              (context, index) => Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(16)),
          ),
        ));
  }
}
