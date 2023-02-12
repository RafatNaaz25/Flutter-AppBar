// ignore: file_names
// ignore_for_file: use_key_in_widget_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class App1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<App1> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Demo'),
        centerTitle: true,
        leading: (IconButton(onPressed: () {}, icon: const Icon(Icons.menu))),
        actions: [
          IconButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "Alarm", 
                    gravity: ToastGravity.CENTER,
                    toastLength: Toast.LENGTH_SHORT);
              },
              icon: const Icon(Icons.alarm)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.accessibility))
        ],
      ),
    )));
  }
}


