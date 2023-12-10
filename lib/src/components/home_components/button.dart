import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatefulWidget{
  Function()? onTap;

  Button({super.key, required this.onTap});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 35, right: 35, top: 7, bottom: 7),
              child: Icon(Icons.arrow_right_alt, size: 38),
            ),
        ),
    );
  }
}