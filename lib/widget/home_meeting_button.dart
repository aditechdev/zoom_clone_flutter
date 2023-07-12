import 'package:flutter/material.dart';
import 'package:zoom_clone_flutter/utils/colors.dart';

class HomeMeatingButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final IconData? icon;
  final String? text;

  const HomeMeatingButtonWidget({super.key, required this.onTap, this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.06),
                    offset: const Offset(0, 4))
              ],
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text!,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
