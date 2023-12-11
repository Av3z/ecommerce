import 'package:ecommerce/src/components/auth_components/continue_with.dart';
import 'package:ecommerce/src/components/auth_components/custom_textfield.dart';
import 'package:ecommerce/src/components/auth_components/square_tile.dart';
import 'package:ecommerce/src/components/home_components/logo.dart';
import 'package:ecommerce/src/components/secondary_button.dart';
import 'package:ecommerce/src/services/auth_service.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RegisterContainer extends StatelessWidget {
  final _emailInputController = TextEditingController();
  final _passwordInputController = TextEditingController();
  final _nameInputController = TextEditingController();
  Function()? onTap;
  final _authService = AuthService();

  RegisterContainer({super.key, required this.onTap});

  void signUserUp() {
    _authService.registerUser(
        name: _nameInputController.text,
        email: _emailInputController.text,
        password: _passwordInputController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        // logo
        const Logo(),
        const SizedBox(
          height: 10,
        ),
        // textfield name
        CustomTextfield(hintText: 'Nome', controller: _nameInputController),
        const SizedBox(
          height: 10,
        ),

        // textfield username
        CustomTextfield(hintText: 'Email', controller: _emailInputController),
        const SizedBox(
          height: 10,
        ),
        // textfield password
        CustomTextfield(
            hintText: 'Senha',
            obscureText: true,
            controller: _passwordInputController),

        const SizedBox(
          height: 10,
        ),

        // forgot password?

        // login button
        const SizedBox(
          height: 20,
        ),
        SecondaryButton(text: 'Entrar', onTap: signUserUp),

        // or continue with
        const SizedBox(
          height: 50,
        ),
        const ContinueWith(),

        // google + apple login
        const SizedBox(
          height: 40,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SquareTile(imagePath: 'lib/images/google.png'),
            SquareTile(imagePath: 'lib/images/apple.png'),
          ],
        ),

        // not a member ? register now
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Já tem uma conta? ',
              style: TextStyle(color: Colors.grey[700]),
            ),
            GestureDetector(
              onTap: onTap,
              child: const Text(
                'Entrar agora',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
