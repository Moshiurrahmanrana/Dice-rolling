import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final Color backgroundColor;
  final Function onPressed;
  final String logoName;

  const SocialLoginButton(
      {super.key,
      required this.backgroundColor,
      required this.onPressed,
      required this.logoName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed.call();
      },
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        radius: 30,
        child: Image.asset(
          logoName,
          height: 32,
          width: 32,
        ),
      ),
    );
  }
}
