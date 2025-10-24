import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal, brightness: Brightness.dark,),
        
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter App")),
        body: selectedIndex == 0
            ? Center(child: Text("Home Screen", style: TextStyle(fontSize: 24)))
            : Center(child: Text("Profile Screen", style: TextStyle(fontSize: 24))),
        bottomNavigationBar: NavigationBar(
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
        ),
      ),
    );
  }
}
