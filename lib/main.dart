import 'package:e_commerce/pages/details_screen.dart';
import 'package:e_commerce/pages/home.dart';
import 'package:e_commerce/pages/login.dart';
import 'package:e_commerce/pages/register.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Details(),
    );
  }
}