import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final double days = 300.22;
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalouge App"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Welcome To $days of Flutter"),
      ),
      drawer: const Drawer(),
    );
  }
}
