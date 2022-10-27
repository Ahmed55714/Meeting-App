import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:zoom/resources/auth_methods.dart';
import 'package:zoom/screens/history_meeting_screen.dart';
import 'package:zoom/screens/meeting_screen.dart';
import 'package:zoom/widgets/custom_button.dart';

import '../utils/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChange(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
    MeetingScreen(),
    const HistoryMeetingScreen(),
    const Text('Contacts'),
    CustomButton(
      text: 'Log Out',
      onPressed: () => AuthMethods().signOut(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: const Text('Meet & Chat'),
        centerTitle: true,
      ),
      body: pages[_page],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: footerColor,
        activeColor: buttonColor,

        onTap: onPageChange,
        initialActiveIndex: _page,
        // type: BottomNavigationBarType.fixed,
        items: const [
          TabItem(
              icon: Icon(
                Icons.comment_bank,
              ),
              title: 'Meet & Chat'),
          TabItem(
              icon: Icon(
                Icons.lock_clock,
              ),
              title: 'Meeting'),
          TabItem(
              icon: Icon(
                Icons.person_outline,
              ),
              title: 'Contacts'),
          TabItem(
            icon: Icon(Icons.settings),
            title: 'settings',
          ),
        ],
      ),
    );
  }
}

/*
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChange(int page){
    setState(() {
      _page = page;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: footerColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: onPageChange,
        currentIndex: _page,
        // type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.comment_bank,
              ),
              label: 'Meet & Chat'),
          BottomNavigationBarItem(
            
              icon: Icon(
                Icons.lock_clock,
              ),
              label: 'Meeting'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: 'Contacts'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'settings',
          ),
        ],
        
      ),
    );
  }
}

*/ 