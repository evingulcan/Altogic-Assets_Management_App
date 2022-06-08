import 'package:assets_management_app/products/widgets/custom_button.dart';
import 'package:assets_management_app/products/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                top: 20,
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
              height: 15,
            ),
            const Text(
              'Login to Assogic',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            AuthTextField(
              hintText: 'Email',
            ),
            AuthTextField(
              hintText: 'Password',
            ),
            const SizedBox(
              height: 40,
            ),
            SocialLoginButton(
              butonText: 'Login',
              onPressed: () {},
              butonColor: Colors.deepPurple,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Forgot Password',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Don’t you have an account? Register Now',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ]),
    );
  }
}
