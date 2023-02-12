// ignore_for_file: no_logic_in_create_state, use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class App2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<App2> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(onTap:(value){
          Fluttertoast.showToast(msg: 'You selected $value');
        },items: const [
          BottomNavigationBarItem(icon: Icon(Icons.account_balance),label: 'one'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit_sharp),label: 'two')
        ],),
        appBar: AppBar(
        title: const Text('Bottom Navigator bar'),
        ),
      ),
    ));
  }
}
