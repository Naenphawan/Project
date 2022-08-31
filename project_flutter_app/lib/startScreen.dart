// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_flutter_app/screen/homeScreen.dart';

class StartScreen extends StatefulWidget {
  StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color:Color.fromARGB(255, 226, 252, 255),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (() {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen() ,));
              }),
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('assets/image/Loco.png'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'HO MY PET',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
