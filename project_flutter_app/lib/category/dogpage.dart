// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Dogpage extends StatefulWidget {
  Dogpage({Key? key}) : super(key: key);

  @override
  State<Dogpage> createState() => _DogpageState();
}

class _DogpageState extends State<Dogpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("สุนัข", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 254, 136, 25),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 246, 219, 184),
        child: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              TextFormField(),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.grey),
                    child: Center(child: Text('ลงขาย')),
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.grey),
                    child: Center(child: Text('โพสต์หา')),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Color.fromARGB(255, 225, 166, 103)),
                      child: Center(child: Text('นัทสัตว์นำเข้าฟาร์ม')),
                    ),
                    Container(
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Color.fromARGB(255, 225, 166, 103)),
                      child: Center(child: Text('แนนสุราษฟาร์ม')),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Color.fromARGB(255, 245, 236, 228)),
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/image/cat.png',
                                  width: 50,
                                  height: 50,
                                )),
                            Text(
                              'แมว',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Color.fromARGB(255, 245, 236, 228)),
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/image/cat.png',
                                  width: 50,
                                  height: 50,
                                )),
                            Text(
                              'แมว',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Color.fromARGB(255, 245, 236, 228)),
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/image/cat.png',
                                  width: 50,
                                  height: 50,
                                )),
                            Text(
                              'แมว',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Color.fromARGB(255, 245, 236, 228)),
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/image/cat.png',
                                  width: 50,
                                  height: 50,
                                )),
                            Text(
                              'แมว',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Color.fromARGB(255, 245, 236, 228)),
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/image/cat.png',
                                  width: 50,
                                  height: 50,
                                )),
                            Text(
                              'แมว',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Color.fromARGB(255, 245, 236, 228)),
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/image/cat.png',
                                  width: 50,
                                  height: 50,
                                )),
                            Text(
                              'แมว',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.grey),
                        child: Center(child: Text('ใหม่ล่าสุด')),
                      ),
                      Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.grey),
                        child: Center(child: Text('ราคา')),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 170,
                        height: 270,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Color.fromARGB(255, 245, 236, 228)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 120),
                              child: Container(
                                  width: 60,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      color: Colors.amber),
                                  child: Center(child: Text('ระยอง'))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/image/8.jpg',
                                width: 150,
                                height: 150,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 70),
                              child: Container(
                                child: Text(
                                  'สุนัข อลาสกัน \n นำเข้า : เยอรมัน \n เพศ : ผู้',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 120),
                              child: Container(
                                  width: 60,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      color: Colors.amber),
                                  child: Center(child: Text('89000฿'))),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 170,
                        height: 270,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Color.fromARGB(255, 245, 236, 228)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 120),
                              child: Container(
                                  width: 60,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      color: Colors.amber),
                                  child: Center(child: Text('กรุงเทพ'))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/image/26.jpg',
                                width: 150,
                                height: 150,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 70),
                              child: Container(
                                child: Text(
                                  'แมว สก็อตติชโฟลด์ \n นำเข้า : รัสเซีย \n เพศ : เมีย',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 120),
                              child: Container(
                                  width: 60,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      color: Colors.amber),
                                  child: Center(child: Text('14000฿'))),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 170,
                        height: 270,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Color.fromARGB(255, 245, 236, 228)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 120),
                              child: Container(
                                  width: 60,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      color: Colors.amber),
                                  child: Center(child: Text('ระยอง'))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/image/8.jpg',
                                width: 150,
                                height: 150,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 70),
                              child: Container(
                                child: Text(
                                  'สุนัข อลาสกัน \n นำเข้า : เยอรมัน \n เพศ : ผู้',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 120),
                              child: Container(
                                  width: 60,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      color: Colors.amber),
                                  child: Center(child: Text('89000฿'))),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 170,
                        height: 270,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Color.fromARGB(255, 245, 236, 228)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 120),
                              child: Container(
                                  width: 60,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      color: Colors.amber),
                                  child: Center(child: Text('กรุงเทพ'))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/image/26.jpg',
                                width: 150,
                                height: 150,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 70),
                              child: Container(
                                child: Text(
                                  'แมว สก็อตติชโฟลด์ \n นำเข้า : รัสเซีย \n เพศ : เมีย',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 120),
                              child: Container(
                                  width: 60,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      color: Colors.amber),
                                  child: Center(child: Text('14000฿'))),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
