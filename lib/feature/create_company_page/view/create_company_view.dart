import 'package:assets_management_app/feature/homePage/view/home_page.dart';
import 'package:assets_management_app/products/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CreateCompanyPage extends StatefulWidget {
  const CreateCompanyPage({Key? key}) : super(key: key);

  @override
  State<CreateCompanyPage> createState() => _CreateCompanyPageState();
}

class _CreateCompanyPageState extends State<CreateCompanyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: context.dynamicHeight(0.05),
          ),
          Image.asset('assets/img/kucuklogo.png'),
          SizedBox(
            height: context.dynamicHeight(0.25),
          ),
          SocialLoginButton(
            butonColor: Colors.deepPurple,
            yukseklik: 90,
            radius: 80,
            butonText: 'Create For Your Company',
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
          SocialLoginButton(
            butonColor: Colors.deepPurple,
            butonText: 'Join to Company',
            yukseklik: 90,
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
        ],
      ),
    );
  }
}
