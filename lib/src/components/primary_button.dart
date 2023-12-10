import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  late String text;
  late Function() onPress;

  // ignore: non_constant_identifier_names
  PrimaryButton({super.key, required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0), // Ajuste o valor conforme necessário
          ),
          padding: const EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15), // Ajuste o valor conforme necessário
        ),
        onPressed: onPress, 
        child: Text(text, style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 17,
          ),
        ),
      );
  }
}