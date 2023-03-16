import 'package:flutter/material.dart';
import 'package:flutter_app/main_page.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MainPage(),
    );
  }
}
