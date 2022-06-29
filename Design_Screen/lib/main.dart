import 'package:alaa/addaddress.dart';
import 'package:alaa/ff.dart';
import 'package:alaa/gredview.dart';
import 'package:alaa/login.dart';
import 'package:alaa/splach.dart';
import 'package:alaa/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: LoginScreen(),

    );
  }

}
