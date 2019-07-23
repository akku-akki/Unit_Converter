import 'package:flutter/material.dart';
import 'main_Screen.dart';
void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      theme: ThemeData(
        canvasColor: Colors.orange[100]
        ,primarySwatch: Colors.orange),
      home: MainScreen(),
    );
  }
}
