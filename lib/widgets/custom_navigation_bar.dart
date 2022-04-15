import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);
  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {

  int _selectedIndex = 0;

  void _onPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0 ? const Icon(Icons.home, color: Colors.black,) : const Icon(Icons.home_filled, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1 ? const Icon(Icons.search, color: Colors.black) : const Icon(Icons.search_outlined, color: Colors.black),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2 ? const Icon(Icons.notifications, color: Colors.black) : const Icon(Icons.notifications_none_outlined, color: Colors.black),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3 ? const Icon(Icons.settings, color: Colors.black) : const Icon(Icons.settings_outlined, color: Colors.black),
            label: 'Settings',
          ),
        ]
    );
  }
}
