import 'package:flutter/material.dart';
import 'package:learn_flutter/data/notifiers.dart';
import 'package:learn_flutter/views/widget_tree.dart';
import 'package:learn_flutter/views/widgets/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: darkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: isDarkMode ? Brightness.light : Brightness.dark,
            ),
            
          ),
          home: WidgetTree(),
        );
      },
    );
  }
}
