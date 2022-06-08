import 'package:assets_management_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class AuthTextField extends StatefulWidget {
  AuthTextField({
    Key? key,
    required this.hintText,
    this.isObsecure,
  }) : super(key: key);

  final String hintText;

  bool? isObsecure;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 50,
        width: 360,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextFormField(
              cursorColor: AppColors.white,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusColor: AppColors.white,
                hoverColor: AppColors.white,
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
                suffixIcon: widget.hintText == "Şifre"
                    ? widget.isObsecure! && widget.isObsecure != null
                        ? IconButton(
                            onPressed: changeObsecure,
                            icon: const Icon(Icons.visibility_off_rounded),
                          )
                        : IconButton(
                            onPressed: changeObsecure,
                            icon: const Icon(Icons.visibility),
                          )
                    : const SizedBox(),
              ),
              obscureText: widget.isObsecure ?? false,
            ),
          ),
        ),
      ),
    );
  }

  void changeObsecure() {
    setState(() {
      widget.isObsecure = !(widget.isObsecure ?? false);
    });
  }
}
