import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ludo_project/Models/otp_login_page.dart';
import 'package:ludo_project/main.dart';
// import 'package:ludo_project/numberscreen.dart';
// import 'package:ludo_project/otpscreen.dart';
import 'package:ludo_project/support.dart';
import 'openscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ludo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
      const OpenScreen(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration( seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                const OpenScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:Image.asset('Assets/images/ludo.jpg',
          height: 100,
          width: 100,
          // image: AssetImage(
          //   'Assets/images/money.png',
          // ),

        )
    );
  }
}