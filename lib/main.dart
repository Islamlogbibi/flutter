import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("flutter Mapp"), centerTitle: true),
        // drawer: Drawer(
        //   child: Column(
        //     children: [
              
        //       ListTile(title: Text('logout'),),
        //       ListTile(title: Text('settings'),),
        //       ListTile(title: Text('profile'),),
        //     ],
        //   ),
        // ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.restore),
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (int value) {},
          selectedIndex: 0,
        ),
      ),
    );
  }
}
