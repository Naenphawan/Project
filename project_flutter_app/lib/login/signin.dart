import 'package:flutter/material.dart';
import 'package:project_flutter_app/login/register.dart';

class Signin extends StatefulWidget {
  Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 226, 252, 255),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 80),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (() {
                      Navigator.pop(context);
                    }),
                    child: Image.asset(
                      'assets/image/close.png',
                      width: 30,
                      height: 30,
                    ),
                  )
                ],
              ),
            ),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/image/Loco.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Register (),
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color:Color.fromARGB(255, 154, 241, 255)),
                      child: Center(child: Text('สมัครสมาชิก')),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Color.fromARGB(255, 45, 214, 240)),
                    child: Center(child: Text('เข้าสู่ระบบ')),
                  ),
                ),
              ],
            ),
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/image/nut.jpg'),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 145),
                  child: Container(
                    width: 100,
                    height: 40,
                    child: Center(
                        child: Text('Profile',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 170),
                  child: Container(
                    width: 200,
                    height: 40,
                    child: (Text('อีเมล์',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 170),
                  child: Container(
                    width: 200,
                    height: 40,
                    child: (Text('รหัสผ่าน',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Color.fromARGB(255, 154, 241, 255)),
                    child: Center(child: Text('ยืนยัน')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Color.fromARGB(255, 154, 241, 255)),
                    child: Center(child: Text('ยกเลิก')),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
