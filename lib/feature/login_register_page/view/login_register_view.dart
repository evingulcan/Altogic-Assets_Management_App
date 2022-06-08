import 'package:assets_management_app/core/app_colors.dart';
import 'package:assets_management_app/products/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class LoginRegisterPage extends StatefulWidget {
  LoginRegisterPage({Key? key}) : super(key: key);

  @override
  State<LoginRegisterPage> createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 20,
              ),
              child: Container(
                height: context.dynamicHeight(0.20),
                width: context.dynamicWidth(0.80),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                    child: Text(
                  'Manage Your Assets',
                  style: TextStyle(fontSize: 25),
                )),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SocialLoginButton(
              butonText: 'Login',
              onPressed: () {},
              butonColor: Colors.deepPurple,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'or',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            SocialLoginButton(
              butonText: 'Register',
              onPressed: () {},
              butonColor: Colors.black,
            ),
          ]),
    );
  }
}
