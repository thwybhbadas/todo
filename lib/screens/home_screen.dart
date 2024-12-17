import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'TODO',
          style: TextStyle(
            fontSize: 30,
            color: Color(0xff000000),
            fontWeight: FontWeight.w600,
          ),
          softWrap: false,
        ),
      ),
      body: const Center(
        child: Text('HOME SCREEN'),
      ),
    );
  }
}
