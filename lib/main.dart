import 'package:flutter/material.dart';
import 'package:flutter_demo/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // double days = 300.22;
    return const MaterialApp(home: HomePage());
  }
}
