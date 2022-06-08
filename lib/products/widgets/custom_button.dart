import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final String butonText;
  final Color butonColor;
  final Color textColor;
  final double radius;
  final double yukseklik;

  final VoidCallback onPressed;

  const SocialLoginButton(
      {Key? key,
      required this.butonText,
      required this.butonColor,
      this.textColor = Colors.white,
      this.radius = 20,
      this.yukseklik = 50,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: SizedBox(
          height: yukseklik,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              primary: butonColor,
            ),
            child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(),
                  Text(
                    butonText,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: textColor, fontSize: 20),
                  ),
                  Container(),
                ]),
          ),
        ),
      ),
    );
  }
}
