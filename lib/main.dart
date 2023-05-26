import 'package:flutter/material.dart';
import 'package:shoes4you/model/shoe.dart';
import 'package:shoes4you/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Shoes 4 You',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}
