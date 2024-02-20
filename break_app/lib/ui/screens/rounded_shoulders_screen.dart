import 'package:flutter/material.dart';

class RoundShouldersScreen extends StatelessWidget {
  const RoundShouldersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Break App',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
