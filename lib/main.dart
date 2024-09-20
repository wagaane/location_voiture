// ignore_for_file: prefer_const_constructors

import 'package:app_01/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
   
    return  MaterialApp(
      theme: ThemeData(
        fontFamily: 'Robot'
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
