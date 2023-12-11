import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;

  const CustomTextfield({
    Key? key,
    this.controller,
    required this.hintText,
    bool? obscureText, // Alterado para ser opcional
  })  : obscureText = obscureText ?? false, // Valor padrão se não fornecido
        super(key: key);

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400)),
            filled: true,
            fillColor: Colors.grey.shade200,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500])),
      ),
    );
  }
}
