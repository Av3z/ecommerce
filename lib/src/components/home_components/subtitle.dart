import 'package:flutter/material.dart';

class Subtitle extends StatelessWidget {
  const Subtitle({super.key});

  @override
  Widget build(context){
    return Text(
            'Prepare seu bolso pois hoje você vai gastar!', 
            style: TextStyle(
              color: Colors.grey[700],
              fontWeight: FontWeight.bold,
              fontSize: 18
           ),
        );
  }
}