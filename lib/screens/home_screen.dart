import 'package:flutter/material.dart';
import 'package:zoom_clone_flutter/screens/history_meeting_screen.dart';
import 'package:zoom_clone_flutter/screens/meet_chat_screen.dart';
import 'package:zoom_clone_flutter/utils/colors.dart';

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

  List<Widget> pages = [
    const MeetAndChatScreen(),
    const HistoryMeetingScreen(),
    const Text("Contacts"),
    const Text("Setting"),
    const Text("Meet and chat"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Meet & Chat"),
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      body: pages[_currentPageIndex],
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
          ]),
    );
  }
}
