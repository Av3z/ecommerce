import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset('lib/images/logo.png', width: 300, height: 200,));
  }
}