// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 161, 242, 255),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Color.fromARGB(255, 45, 214, 240)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 260, top: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: (() {
                            Navigator.pop(context);
                          }),
                          child: Image.asset(
                            'assets/image/close.png',
                            width: 20,
                            height: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 40, left: 23, right: 20),
                          child: Text('ลงโพสต์'),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 40, left: 30, right: 20),
                          child: Text('อธิบาย'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 40, left: 15, right: 20),
                          child: Text('เกี่ยวกับเรา'),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 40, left: 23, right: 20),
                          child: Text('ติดต่อเรา'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
