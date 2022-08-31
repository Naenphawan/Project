// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_constructors_in_immutables
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title:
            Text("รายละเอียด", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 254, 238, 215),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 376,
                    height: 180,
                    color: Color.fromARGB(255, 254, 238, 215),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color:  Color.fromARGB(255, 254, 238, 215),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'หมา ชามอยด์',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('หมา, ชามอยด์'),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text('เพศ m'),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        width: 50,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            color: Colors.grey),
                                        child: Text('ระยอง'),
                                      )
                                    ],
                                  ),
                                ),
                                Text('ฟาร์ม : มิร่านำเข้าฟาร์ม'),
                                Text('เลขที่ใบอนุญาติ : d1234567890'),
                                Text('นำเข้าจาก เยอรมัน'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              //color: Colors.red,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 45),
                                    child: Container(
                                      width: 70,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          ),
                                          color: Colors.grey),
                                      child: Icon(
                                        Icons.star,
                                        size: 30,
                                        color: Colors.amber,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                      width: 120,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              bottomLeft: Radius.circular(20)),
                                          color: Colors.amber),
                                      child: Center(child: Text('89000 ฿')))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 90,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.grey),
                  child: Column(
                    children: [Text('ช่วงอายุ'), Text('วัยเด็ก')],
                  ),
                ),
                Container(
                  width: 90,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.grey),
                  child: Column(
                    children: [Text('วันเกิด'), Text('28 may 2022')],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: 380,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey),
              child: Column(
                children: [
                  Text('รายละเอียด'),
                  Text('-พ่อสายเลือดประกวดจากฟาร์ม มิร่าฟาร์ม แชมป์ปี2000 \n -แม่สายเลือดประกวดจากฟาร์ม มิร่าฟาร์ม แชมป์ปี 2019')
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 250,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey),
              child: Center(child: Text('ลงโพสเมื่อ 15 สิงหาคม 2564 ')),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 400,
              height: 60,
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: Text('ณ'),
              
              ),
                  Container(child: Column(
                    children: [
                      Text('ผู้ขาย'),
                      SizedBox(height: 5),
                      Text('ณัฎฐาพร สุมลฑา'),
                    ],
                  )),
                  CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: Text('ติดต่อ'),
              
              ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
