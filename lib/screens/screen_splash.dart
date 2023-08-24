import 'package:dicee/screens/screen_signup.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    super.initState();

    navigateToSignupScreenAfter2seconds();
  }

  void navigateToSignupScreenAfter2seconds() async {
    await Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return const ScreenSignUp();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0x1F1D2B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: AssetImage('images/Group 22577.png'),
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
