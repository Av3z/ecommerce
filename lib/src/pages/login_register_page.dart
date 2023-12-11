import 'package:ecommerce/src/components/auth_components/login_container.dart';
import 'package:ecommerce/src/components/auth_components/register_container.dart';
import 'package:flutter/material.dart';

class LoginRegisterPage extends StatefulWidget {
  const LoginRegisterPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginRegisterPage();
}

class _LoginRegisterPage extends State<LoginRegisterPage> {
  bool showLoginPage = false;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(context) {
    if (showLoginPage) {
      return LoginContainer(
        onTap: togglePages,
      );
    } else {
      return RegisterContainer(
        onTap: togglePages,
      );
    }
  }
}
