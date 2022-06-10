import 'package:assets_management_app/feature/create_company_page/view/create_company_view.dart';
import 'package:assets_management_app/products/widgets/custom_button.dart';
import 'package:assets_management_app/products/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                'Register on Assogic',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              AuthTextField(
                hintText: 'Name and Surname',
              ),
              AuthTextField(
                hintText: 'Email',
              ),
              AuthTextField(
                hintText: 'Password',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Checkbox(
                      checkColor: Colors.white,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 17),
                    child: Text(
                      'I Accept the Terms Of Use',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SocialLoginButton(
                butonText: 'Register',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateCompanyPage()));
                },
                butonColor: Colors.deepPurple,
              ),
            ]),
      ),
    );
  }
}
