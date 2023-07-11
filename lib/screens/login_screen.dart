import 'package:flutter/material.dart';
import 'package:zoom_clone_flutter/r.dart';
import 'package:zoom_clone_flutter/widget/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Start or join the meeting",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 38.0,
          ),
          child: Image.asset(KImageAsset.onBoardingImage),
        ),
        CustomButtonWidget(
          btnText: "Google Sign In",
          onTap: () {},
        )
      ],
    ));
  }
}
