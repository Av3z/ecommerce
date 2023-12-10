import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function() onTap;

  const DrawerList({super.key, required this.icon, required this.text, required this.onTap});

  @override
  Widget build(context){
    return ListTile(
            leading: Icon(icon),
            title: Text(text, style: const TextStyle(fontWeight: FontWeight.bold),),
            onTap: onTap,
          );
  }
}