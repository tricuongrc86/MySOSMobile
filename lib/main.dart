import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mysos/screens/start/start_view.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppSate();
  }
}

class MyAppSate extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartView(),
    );
  }
}
