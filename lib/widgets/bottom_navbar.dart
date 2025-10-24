import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BottomNavbar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
      ],
      onDestinationSelected: (int value) {
        setState(() {
          selectedIndex = value;
        });
      },
      selectedIndex: selectedIndex,
    );
  }
}
