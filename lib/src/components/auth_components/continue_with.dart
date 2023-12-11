import 'package:flutter/material.dart';

class ContinueWith extends StatelessWidget {
  const ContinueWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Expanded(
              child: Divider(
            color: Colors.grey[400],
            thickness: 0.8,
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Ou continue com',
              style: TextStyle(color: Colors.grey[700]),
            ),
          ),
          Expanded(
              child: Divider(
            color: Colors.grey[400],
            thickness: 0.8,
          )),
        ],
      ),
    );
  }
}
