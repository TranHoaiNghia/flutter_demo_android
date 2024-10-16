import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // 1
    // home: Home(),

    // 2
    // routes: {
    //   Routes.Home: (context) => Home(),
    //   Routes.Page1: (context) => Page1(),
    //   Routes.Page2: (context) => Page2(),
    //   Routes.Page3: (context) => Page3(),
    // },
    // initialRoute: Routes.Home,

    // 3
    onGenerateRoute: (settings) {
      print("onGenerateRoute $settings");
      switch (settings.name) {
        case Routes.Home:
          return MaterialPageRoute(
              builder: (context) => Home(), settings: settings);
        case Routes.Page1:
          return MaterialPageRoute(
              builder: (context) => Page1(), settings: settings);
        case Routes.Page2:
          return MaterialPageRoute(
              builder: (context) => Page2(), settings: settings);
        case Routes.Page3:
          return MaterialPageRoute(
              builder: (context) => Page3(), settings: settings);
      }
    },
  ));
}

class Routes {
  static const String Home = "/";
  static const String Page1 = "/page1";
  static const String Page2 = "/page2";
  static const String Page3 = "/page3";
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text("Home to Page1"),
            onPressed: () {
              // 1
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => Page1(),
              //     settings: RouteSettings(name: "/page1")));

              //   2
              Navigator.of(context)
                  .pushNamed(Routes.Page1, arguments: {"arg1": "content1"});
            },
          ),
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Page 1 ${ModalRoute.of(context)?.settings.arguments}");
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text("Page1 to Page2"),
            onPressed: () async {
              // 1
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => Page2(),
              // ));

              await Navigator.of(context).pushNamed(Routes.Page2);
              print(
                  "result in Page1 ${ModalRoute.of(context)?.settings.arguments}");
            },
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text("Page2 to Page3"),
            onPressed: () async {
              // 1
              // var r = await Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => Page3(),
              // ));

              // 2
              var r = await Navigator.of(context).pushNamed(Routes.Page3);
              print("Result Page2 $r");
            },
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text("Page3 rollback Page2"),
            onPressed: () {
              // Navigator.of(context).pop();
              // Navigator.of(context).pop("Result data from Page 3");
              // Navigator.of(context).popUntil(ModalRoute.withName(Routes.Page1));
              Navigator.of(context).popUntil(
                    (route) {
                  if (route.settings.name == Routes.Page1) {
                    (route.settings.arguments as Map)["result"] =
                    "Result from Page 3";
                    return true;
                  }
                  return false;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
