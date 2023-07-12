import 'package:color_log/color_log.dart';
import 'package:flutter/material.dart';
import 'package:zoom_clone_flutter/widget/home_meeting_button.dart';

class MeetAndChatScreen extends StatelessWidget {
  const MeetAndChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeatingButtonWidget(
              onTap: () {
                clog.checkSuccess(true, "It is working");
              },
              text: "New Meeting",
              icon: Icons.videocam,
            ),
            HomeMeatingButtonWidget(
              onTap: () {
                clog.checkSuccess(true, "It is working");
              },
              text: "Join Meeting",
              icon: Icons.add_box_rounded,
            ),
            HomeMeatingButtonWidget(
              onTap: () {
                clog.checkSuccess(true, "It is working");
              },
              text: "Schedule",
              icon: Icons.calendar_month,
            ),
            HomeMeatingButtonWidget(
              onTap: () {
                clog.checkSuccess(true, "It is working");
              },
              text: "Share Screen",
              icon: Icons.arrow_upward,
            ),
          ],
        ),
        const Expanded(
          child: Center(
            child: Text(
              "Create/Join meetings with just one click!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}