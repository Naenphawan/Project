import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text("โพสต์หา", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 244, 232, 196),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
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
                      child: Center(child: Text('โพส')),
                    ),
                    Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Colors.grey),
                      child: Center(child: Text('ยกเลิก')),
                    )
                  ],
                ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 110,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Color.fromARGB(255, 248, 163, 99)),
                      child: Center(child: Text('สัตว์เลี้ยงแนะนำ')),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 5,
                    color: Colors.amber,
                  ),
                ],
              ),
              SizedBox(height: 20,),
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
            ],
          ),
        ),
      ),
    );
  }
}
