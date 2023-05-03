import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'screens_import.dart';

class GestureViewScreen extends StatefulWidget {
  const GestureViewScreen({Key? key}) : super(key: key);

  @override
  _GestureViewScreenState createState() => _GestureViewScreenState();
}

class _GestureViewScreenState extends State<GestureViewScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    FeedScreen(),
    ProfileScreen(),
    SettingsScreen(
      currentLanguage: 'Turkish',
      onLanguageChanged: (String newLanguage) {
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: GNav(
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            backgroundColor: Colors.white,
            gap: 8.0,
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            tabBackgroundColor: Colors.black,
            activeColor: Colors.white,
            iconSize: 24.0,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.rss_feed,
                text: 'Feed',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
