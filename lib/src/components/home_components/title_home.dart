import 'package:flutter/material.dart';

class TitleHome extends StatelessWidget {
  const TitleHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Vamos começar!', 
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        ),
    );
  }
}