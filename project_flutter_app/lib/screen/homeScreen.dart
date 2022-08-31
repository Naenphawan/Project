// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code, unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:project_flutter_app/category/birdpage.dart';
import 'package:project_flutter_app/detail/detail_Screen.dart';
import 'package:project_flutter_app/category/catpage.dart';
import 'package:project_flutter_app/category/dogpage.dart';
import 'package:project_flutter_app/category/menpage.dart';
import 'package:project_flutter_app/ipcon.dart';
import 'package:project_flutter_app/login/register.dart';
import 'package:project_flutter_app/post/post_page.dart';
import 'package:project_flutter_app/screen/menu.dart';
import 'package:project_flutter_app/category/mixzoopage.dart';
import 'package:project_flutter_app/category/rabbitpage.dart';
import 'package:project_flutter_app/screen/search.dart';
import 'package:project_flutter_app/category/snakepage.dart';
import 'package:project_flutter_app/category/turtlepage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Slider_Carousel.dart';
import 'package:http/http.dart' as http;

const TextStyle _textStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontStyle: FontStyle.italic,
);

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List dataList = [];

  get_data() async {
    final response = await http.get(Uri.parse("$ipcon/php_api/api/zoo/zoo"));

    var data = json.decode(response.body);
    setState(() {
      dataList = data;
    });
    return dataList;
  }

  @override
  void initState() {
    get_data();
    super.initState();
  }

  int _currentIndex = 0;
  List<Widget> pages = const [
    Text('home', style: _textStyle),
    Text('faver', style: _textStyle),
    Text('notifi', style: _textStyle),
    Text('profile', style: _textStyle),
  ];

  //รูปของคอลาแซล
  List<String> images = [
    "assets/image/zoo.jpg",
    "assets/image/zoo1.jpg",
    "assets/image/zoo2.jpg",
  ];

  List animalList = [];
  String? zoo_id;

  get_animalList() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      zoo_id = preferences.getString('zoo_id');
    });
    //final response = await
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("OH MY PET", style: TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: const Icon(Icons.help),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Menu(),
                ));
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Search(),
                  ));
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Register(),
                  ));
            },
          ),
        ],
        backgroundColor: Color.fromARGB(255, 45, 214, 240),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            children: [
              buildCarousel(context),
              SizedBox(
                height: 10,
              ),
              buildPost(context),
              SizedBox(
                height: 15,
              ),
              buildAnimal(context),
              SizedBox(
                height: 15,
              ),
              buildAnimals(context),
              SizedBox(
                height: 15,
              ),
              buildRecommend(context),
              SizedBox(
                height: 15,
              ),
              buildAnimalRecommend(context),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        backgroundColor: Color.fromARGB(255, 45, 214, 240),
        onDestinationSelected: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.star),
            icon: Icon(Icons.star_outlined),
            label: 'faver',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.notifications),
            icon: Icon(Icons.notifications_outlined),
            label: 'notifi',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outlined),
            label: 'profile',
          ),
        ],
      ),
    );
  }

//ส่วนของคอลาแซล
  Widget buildCarousel(BuildContext) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: PageView.builder(
              itemCount: images.length,
              itemBuilder: ((context, index) {
                return SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Image.asset(
                    images[index % images.length],
                    fit: BoxFit.cover,
                  ),
                );
              })),
        ),
        //Row(children: [for(var i = 0; i < images.length; i++)buildIndicator(isSelected)],)
      ],
    );
  }

  Widget buildPost(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 70,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Color.fromARGB(255, 45, 214, 240)),
          child: Center(child: Text('ลงขาย')),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => PostPage(),
                ));
          },
          child: Container(
            width: 70,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Colors.grey),
            child: Center(child: Text('โพสต์หา')),
          ),
        )
      ],
    );
  }

  Widget buildAnimal(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Dogpage(),
                ));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Color.fromARGB(255, 155, 216, 212)),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/image/dog.png',
                      width: 50,
                      height: 50,
                    )),
                Text(
                  'สุนัข',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Catpage(),
                ));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Color.fromARGB(255, 155, 216, 212)),
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
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Birdpage(),
                ));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Color.fromARGB(255, 155, 216, 212)),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/image/brid.png',
                      width: 50,
                      height: 50,
                    )),
                Text(
                  'นก',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Rabbitpage(),
                ));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Color.fromARGB(255, 155, 216, 212)),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/image/rabbit.png',
                      width: 50,
                      height: 50,
                    )),
                Text(
                  'กระต่าย',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildAnimals(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Turtlepage(),
                ));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Color.fromARGB(255, 155, 216, 212)),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/image/turtle.png',
                      width: 50,
                      height: 50,
                    )),
                Text(
                  'เต่า',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Snakepage(),
                ));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Color.fromARGB(255, 155, 216, 212)),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/image/snake.png',
                      width: 50,
                      height: 50,
                    )),
                Text(
                  'งู',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Menpage(),
                ));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Color.fromARGB(255, 155, 216, 212)),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/image/man.png',
                      width: 50,
                      height: 50,
                    )),
                Text(
                  'แม่น',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Mixzoopage(),
                ));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Color.fromARGB(255, 155, 216, 212)),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/image/mixzoo.png',
                      width: 50,
                      height: 50,
                    )),
                Text(
                  'สัตว์อื่นๆ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildRecommend(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 110,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Color.fromARGB(255, 45, 214, 240)),
          child: Center(child: Text('สัตว์เลี้ยงแนะนำ')),
        ),
        Container(
          width: 250,
          height: 5,
          color: Color.fromARGB(255, 45, 214, 240),
        ),
      ],
    );
  }

  Widget buildAnimalRecommend(BuildContext context) {
    return Container(
        width: 1000,
        height: 1000,
        child: FutureBuilder(
          future: get_data(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                itemCount: dataList.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => DetailScreen(),
                          ));
                    },
                    child: Container(
                      width: 170,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Color.fromARGB(255, 207, 240, 244)),
                      child: Stack(
                        children: [
                          Container(
                              width: 60,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                  color: Colors.amber),
                              child: Center(
                                  child: Text(
                                      "${snapshot.data[index]['zoo_province']}"))),
                          Positioned(
                           top: 25,
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 100,
                                  child: Image.network(
                                    '$ipcon/POS_C/POS_C/animal_img/${snapshot.data[index]['zoo_img']}',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Positioned(
                          //   top: 0,
                          //   bottom: 0,
                          //   left: 0,
                          //   right: 0,
                          //   child: Container(
                          //     width: 1,
                          //     height: 1,
                          //     child: Image.network(
                          //       '$ipcon/POS_C/POS_C/animal_img/${snapshot.data[index]['zoo_img']}',
                          //     fit: BoxFit.contain,
                          //     ),
                          //   ),
                          // ),
                          // Container(
                          //   child: Text(
                          //     'ประเภท ${snapshot.data[index]['zoo_name']} \n นำเข้า : ${snapshot.data[index]['zoo_import']} \n เพศ : ${snapshot.data[index]['zoo_sex']}',
                          //     style: TextStyle(
                          //       fontSize: 12,
                          //     ),
                          //   ),
                          // ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                                width: 60,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    color: Colors.amber),
                                child: Center(
                                    child: Text(
                                        '${snapshot.data[index]['zoo_price']}'))),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
    SizedBox(
      height: 10,
    );
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 170,
          height: 270,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Color.fromARGB(255, 245, 236, 228)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 120),
                child: Container(
                    width: 100,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.amber),
                    child: Center(child: Text('ชลบุรี'))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/image/3.jpg',
                  width: 150,
                  height: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70),
                child: Container(
                  child: Text(
                    'กระต่าย ฮอลแลนด์ \n นำเข้า : ฝรั่งเศษ \n เพศ : เมีย',
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
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.amber),
                    child: Center(child: Text('75000฿'))),
              ),
            ],
          ),
        ),
        Container(
          width: 170,
          height: 270,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Color.fromARGB(255, 245, 236, 228)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 120),
                child: Container(
                    width: 60,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.amber),
                    child: Center(child: Text('กระบี่'))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/image/16.jpg',
                  width: 150,
                  height: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70),
                child: Container(
                  child: Text(
                    'นก ฟอพัส \n นำเข้า : ญี่ปุ่น \n เพศ : เมีย',
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
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.amber),
                    child: Center(child: Text('30000฿'))),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
