import 'package:flutter/material.dart';
import 'package:karibu_visitor/Auth/login.dart';
import 'package:karibu_visitor/services/utils/navigation.dart';
//import 'package:karibu_visitor/widgets/Card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Color clockin = const Color.fromARGB(255, 5, 236, 13);
  final Color clockout = Colors.blue;
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.admin_panel_settings),
                tooltip: "Admin",
                onPressed: () {
                  UserNavigation.push(context, destination: const Login());
                }),
          ]),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(0, 0, 255, 0), width: 2.0),
                    color: clockin,
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(0, 251, 255, 0),
                        blurRadius: 4,
                        spreadRadius: 2,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.all(8.0),
                  height: 200,
                  width: 200,
                  //color: const Color.fromARGB(0, 255, 0, 0),
                  child: const Text('Clock in'),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(0, 0, 255, 0), width: 2.0),
                    color: const Color.fromARGB(130, 9, 43, 236),
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(26, 87, 25, 202),
                        blurRadius: 4,
                        spreadRadius: 2,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.all(8.0),
                  height: 200,
                  width: 200,
                  //color: const Color.fromARGB(0, 255, 0, 0),
                  child: const Text('Clock out'),
                ),
              ),
            ],
            // This trailing comma makes auto-formatting nicer for build methods.
          ),
        ),
      ),
    );
  }
}
