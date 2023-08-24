import 'package:dicee/screens/widgets/social_login_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pretty_animated_buttons/widgets/pretty_wave_button.dart';
import 'package:sign_in_button/sign_in_button.dart';

class ScreenSignUp extends StatefulWidget {
  const ScreenSignUp({Key? key}) : super(key: key);

  @override
  State<ScreenSignUp> createState() => _ScreenSignUpState();
}

class _ScreenSignUpState extends State<ScreenSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x1F1D2B),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('images/Logo.png'),
              height: 200,
            ),
            const Row(
              children: [],
            ),
            PrettyWaveButton(
              horizontalPadding: 115,
              verticalPadding: 17,
              backgroundColor: Colors.cyanAccent,
              child: const Text(
                "Sign up",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(children: [
                const TextSpan(
                  text: 'Already have account? ',
                  style: TextStyle(color: Colors.white),
                ),
                TextSpan(
                    text: 'Login',
                    style: const TextStyle(
                      color: Colors.cyan,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('Login Text Clicked');
                      }),
              ]),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: 100,
                  color: Colors.white,
                ),
                const Text(
                  "  Or Sign up with  ",
                  style: TextStyle(color: Colors.white),
                ),
                Container(
                  height: 1,
                  width: 100,
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialLoginButton(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  logoName: 'images/google.png',
                ),
                const SizedBox(
                  width: 16,
                ),
                SocialLoginButton(
                  backgroundColor: Colors.blueGrey,
                  onPressed: () {},
                  logoName: 'images/google.png',
                ),
                const SizedBox(
                  width: 16,
                ),
                SocialLoginButton(
                  backgroundColor: Colors.blueAccent,
                  onPressed: () {},
                  logoName: 'images/google.png',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
