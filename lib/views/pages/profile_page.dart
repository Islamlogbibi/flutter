import 'package:flutter/material.dart';
import 'package:learn_flutter/data/notifiers.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controllerUsername = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  bool? ischecked = false;
  bool switchValue = false;
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),

        child: Column(
          children: [
            TextField(
              controller: controllerUsername,

              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
              onEditingComplete: () => setState(() {}),
            ),
            TextField(
              controller: controllerPassword,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              onEditingComplete: () => setState(() {}),
            ),
            CheckboxListTile.adaptive(
              title: Text('show password'),
              value: ischecked,

              onChanged: (bool? value) {
                setState(() {
                  ischecked = value;
                });
              },
            ),

            SwitchListTile.adaptive(
              title: Text('Remeber me'),
              value: switchValue,
              onChanged: (bool value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
            Slider.adaptive(
              max: 10.0,
              divisions: 10,
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            Text('Slider value: $sliderValue'),
            InkWell(
              splashColor: Colors.teal,
              onTap: () {
                setState(() {
                  print("image clicked");
                });
              },
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.white12,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                
              },style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                
              ),
              child: Text("click here"),
            ),
          ],
        ),
      ),
    );
  }
}
