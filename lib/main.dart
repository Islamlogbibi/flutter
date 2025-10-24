import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/bottom_navbar.dart';

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
        appBar: AppBar(title: Text("Flutter App"), centerTitle: true,),
        
        bottomNavigationBar: BottomNavbar(),
      ),
    );
  }
}
