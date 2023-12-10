import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class BottomTab extends StatelessWidget {

  void Function(int) onTabChange;
  BottomTab({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context){
    return  Container(
      decoration: BoxDecoration(color: Colors.grey[300]),
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: GNav(
        onTabChange: (value) => onTabChange(value),
        tabBorderRadius: 15,
        color: Colors.grey[700],
        activeColor: Colors.grey[900],
        tabActiveBorder: Border.all(color: Colors.grey.shade200),
        tabBackgroundColor: Colors.grey.shade200,
        gap: 1,
        mainAxisAlignment: MainAxisAlignment.center,
        tabs: const [
          GButton(
            icon: Icons.shopping_bag,
            text: 'Shop',
            ),
          GButton(
            icon: Icons.shopping_cart_sharp,
            text: 'Cart',
            ),
        ]),
    );
  }
}