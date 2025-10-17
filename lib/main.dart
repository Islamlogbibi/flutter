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
      title: 'SignLink',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 166, 183),
        brightness: Brightness.dark
        ),
      ),
      home: const MyHomePage(title: 'Welcome to SignLink'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
            // Container(
            //   height: 150.0,
            //   width: double.infinity,
            //   margin: EdgeInsets.all(30.0),
            //   padding: EdgeInsets.all(20.0),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(15.0),
            //     color: const Color.fromARGB(255, 198, 86, 86),
            //   ),
            //   child: Text(
            //     'text to sign',
            //     style: TextStyle(
            //       fontSize: 24,
            //       color: Colors.white
            //     ),
            //   ),
            
              
            // ),
            // Container(
            //   height: 150.0,
            //   width: double.infinity,
            //   margin: EdgeInsets.all(30.0),
            //   padding: EdgeInsets.all(20.0),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(15.0),
            //     color: Colors.lightBlue,
            //   ),
            //   child: Text(
            //     'sign to sign',
            //     style: TextStyle(
            //       fontSize: 24,
            //       color: Colors.white
            //     ),
            //   ),
            
              
            // ),
            Container(
              height: 150.0,
              width: double.infinity,
              margin: EdgeInsets.all(30.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.lightGreen,
              ),
              child: Text(
                'Mobile Dev L3 2025',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white
                ),
              ),
            
              
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}

//