import 'package:flutter/material.dart';

class Favorpage extends StatefulWidget {
  Favorpage({Key? key}) : super(key: key);

  @override
  State<Favorpage> createState() => _FavorpageState();
}

class _FavorpageState extends State<Favorpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text("รายการโปรด", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
