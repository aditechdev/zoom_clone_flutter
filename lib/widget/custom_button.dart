import 'package:flutter/material.dart';
import 'package:zoom_clone_flutter/utils/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key, required this.btnText, required this.onTap});
  final String btnText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            minimumSize: const Size(
              double.infinity,
              50,
            ),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            side: const BorderSide(color: buttonColor)),
        child: Text(btnText),
      ),
    );
  }
}
