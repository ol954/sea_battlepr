import 'package:flutter/material.dart';
import 'package:sea_battle/battlefield.dart';
import 'package:sea_battle/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var battlefield = Battlefield();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(body: Row(children: [Screen(), SizedBox(width: 50,), Screen()])),
    );
  }
}
