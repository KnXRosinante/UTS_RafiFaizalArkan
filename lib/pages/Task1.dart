import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 18.0),
          ),
        ),
      ),
    );
  }
}
