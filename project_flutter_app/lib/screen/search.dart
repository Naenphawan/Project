// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ค้นหา", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 45, 214, 240),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(right: 250),
                    child: Container(
                      width: 160,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color:  Color.fromARGB(255, 161, 242, 255)),
                      child: Center(child: Text('หมวดหมู่')),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Color.fromARGB(255, 161, 242, 255)),
                    child: Center(child: Text('สุนัข')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color:  Color.fromARGB(255, 161, 242, 255)),
                    child: Center(child: Text('แมว')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color:  Color.fromARGB(255, 161, 242, 255)),
                    child: Center(child: Text('นก')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color:  Color.fromARGB(255, 161, 242, 255)),
                    child: Center(child: Text('กระต่าย')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color:  Color.fromARGB(255, 161, 242, 255)),
                    child: Center(child: Text('เต่า')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color:  Color.fromARGB(255, 161, 242, 255)),
                    child: Center(child: Text('งู')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color:  Color.fromARGB(255, 161, 242, 255)),
                    child: Center(child: Text('แม่น')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color:  Color.fromARGB(255, 161, 242, 255)),
                    child: Center(child: Text('อื่นๆ')),
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 229, 255, 253),
    );
  }
}
