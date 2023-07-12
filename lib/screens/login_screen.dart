import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:zoom_clone_flutter/r.dart';
import 'package:zoom_clone_flutter/resources/auth_methods.dart';
import 'package:zoom_clone_flutter/widget/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMethods = AuthMethods();
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
          onTap: () async {
            _authMethods.signInWithGoogle(context).then((res) {
              log("==============> $res");
              if (res) {
                Navigator.pushNamed(context, "/home");
              }
            });
            // bool res = await _authMethods.signInWithGoogle(context);
            // log("==============> $res");

            // if (res) {
            //   Navigator.pushNamed(context, "/home");
            // }
          },
        )
      ],
    ));
  }
}
