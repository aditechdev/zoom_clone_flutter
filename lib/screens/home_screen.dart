import 'package:color_log/color_log.dart';
import 'package:flutter/material.dart';
import 'package:zoom_clone_flutter/utils/colors.dart';
import 'package:zoom_clone_flutter/widget/home_meeting_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPageIndex = 0;
  onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Meet & Chat"),
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      body: Column(
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
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: footerColor,
          currentIndex: _currentPageIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          onTap: onPageChanged,
          unselectedFontSize: 14,
          selectedFontSize: 14,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.comment_bank), label: "Meet & Chat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.lock_clock), label: "Meetings"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: "Contacts"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: "Settings"),
            BottomNavigationBarItem(
                icon: Icon(Icons.comment_bank), label: "Meet & Chat"),
          ]),
    );
  }
}
