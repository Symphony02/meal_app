import 'package:flutter/material.dart';
import 'meals_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MealsScreen(),
    );
  }
}
