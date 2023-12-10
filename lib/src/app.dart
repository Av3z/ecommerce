import 'package:ecommerce/src/pages/cart_page.dart';
import 'package:ecommerce/src/pages/manager_view.dart';
import 'package:ecommerce/src/pages/shop_page.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  handleDarkMode(darkMode){
    return darkMode ? ThemeData.dark() : ThemeData.light();
  }

  @override
  Widget build(context) {
    return MaterialApp(
      theme: handleDarkMode(false),
      home: const HomePage(),
      routes:{  
      '/manager' :(context) => const ManagerView(),
      '/shop' :(context) => const ShopPage(),
      '/cart' :(context) => const CartPage(),
      },
    );
  }
}