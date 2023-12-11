import 'package:ecommerce/src/components/drawer_components/drawer_list.dart';
import 'package:ecommerce/src/components/home_components/logo.dart';
import 'package:ecommerce/src/services/auth_service.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  void userLoggout() {
    AuthService authService = AuthService();
    authService.signUserOut();
  }

  @override
  Widget build(context) {
    return Drawer(
      backgroundColor: Colors.grey[200],
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            const DrawerHeader(child: Logo()),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  DrawerList(
                    icon: Icons.home,
                    text: 'Home',
                    onTap: () => Navigator.pushReplacementNamed(context, '/'),
                  ),
                  DrawerList(
                    icon: Icons.shopping_bag,
                    text: 'Shop',
                    onTap: () =>
                        Navigator.pushReplacementNamed(context, '/manager'),
                  ),
                  DrawerList(
                    icon: Icons.info,
                    text: 'About',
                    onTap: () =>
                        Navigator.pushReplacementNamed(context, '/shop'),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 25.0),
          child: DrawerList(
            icon: Icons.logout,
            text: 'Logout',
            onTap: userLoggout,
          ),
        ),
      ]),
    );
  }
}
