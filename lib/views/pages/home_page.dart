import 'package:flutter/material.dart';
import 'package:learn_flutter/data/notifiers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Image.asset('assets/images/phonebg.jpg', fit: BoxFit.cover,),
    ]);
  }
}
