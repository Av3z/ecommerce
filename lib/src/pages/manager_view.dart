import 'package:ecommerce/src/components/shop_components/bottom_tab.dart';
import 'package:ecommerce/src/pages/cart_page.dart';
import 'package:ecommerce/src/pages/shop_page.dart';
import 'package:flutter/material.dart';

class ManagerView extends StatefulWidget{
  const ManagerView({super.key});

  @override
  State<StatefulWidget> createState() => _StateManagerView();
}

class _StateManagerView extends State<ManagerView> {

  int _selectedIndex = 0;

    void navigateBottomBar(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    final List<Widget> _pages = [
      const ShopPage(),
      const CartPage(),
    ];

  @override
  Widget build(context) {

    return Scaffold(
      bottomNavigationBar: BottomTab(onTabChange: (index) => navigateBottomBar(index)),
      body: _pages[_selectedIndex],
    );
  }
}