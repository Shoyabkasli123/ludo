import 'package:flutter/material.dart';
import 'package:ludo_project/Wallet.dart';
import 'package:ludo_project/add_money.dart';
import 'package:ludo_project/notification.dart';
import 'package:ludo_project/openscreen.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ludo_project/referhistory.dart';

import 'package:ludo_project/earning.dart';

import 'package:url_launcher/url_launcher.dart';

class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);
  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  String email = "info@rkludo.in";
  _launchEmail() async {
    if (await canLaunch("mailto:$email")) {
      await launch("mailto:$email");
    } else {
      throw 'Could not launch';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: GestureDetector(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const SizedBox(
                  height: 70,
                ),
                ListTile(
                  // leading: ImageIcon (image.Assets("
                  //   Assets/images/ludo.jpg"
                  // )),
                  leading: Image.asset(
                    'Assets/images/ludo.jpg',
                  ),
                  title: const Text(
                    'My Profile',
                    style: TextStyle(fontSize: 15),
                  ),
                  // onTap: (){
                  //   Navigator.push(context, MaterialPageRoute(builder: (context) =>  const Support()));
                  // },
                ),
                const SizedBox(
                  height: 22,
                ),
                ListTile(
                  leading: const Icon(Icons.games),
                  title: const Text(
                    'Win Cash',
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OpenScreen()));
                  },
                ),
                const SizedBox(
                  height: 22,
                ),
                ListTile(
                  leading: Icon(Icons.ad_units_sharp),
                  title: const Text(
                    'My Wallet',
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  const Wallet ()));
                  },
                  // onTap: (){
                  //   Navigator.pop(context);
                  // },
                ),
                const SizedBox(
                  height: 22,
                ),
                const ListTile(
                  leading: Icon(Icons.history),
                  title: Text(
                    'Game History',
                    style: TextStyle(fontSize: 15),
                  ),
                  // onTap: (){
                  //   Navigator.pop(context);
                  // },
                ),
                const SizedBox(
                  height: 22,
                ),
                const ListTile(
                  leading: Icon(Icons.history),
                  title: Text(
                    'Transaction History',
                    style: TextStyle(fontSize: 15),
                  ),
                  // onTap: (){
                  //   Navigator.push(context, MaterialPageRoute(builder: (context) =>  const OpenScreen()));
                  // },
                ),
                const SizedBox(
                  height: 22,
                ),
                const ListTile(
                  leading: Icon(Icons.games),
                  title: Text(
                    'Refer and Earn',
                    style: TextStyle(fontSize: 15),
                  ),
                  // onTap: (){
                  //   Navigator.pop(context);
                  // },
                ),
                const SizedBox(
                  height: 22,
                ),
                ListTile(
                  leading: Icon(Icons.games),
                  title: const Text(
                    'Refer History',
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => referhistory()));
                  },
                ),
                const SizedBox(
                  height: 22,
                ),
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: const Text(
                    'Notification',
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => notification()));
                  },
                ),
                const SizedBox(
                  height: 22,
                ),
                ListTile(
                  leading: const Icon(Icons.support),
                  title: const Text(
                    'Support',
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Support()));
                  },
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'Assets/images/ludo.jpg',
                fit: BoxFit.contain,
                height: 56,
              ),
              Container(
                width: 45,
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 90,
                    color: Colors.white,
                    child: Row(children: [
                      Expanded(
                          flex: 2,
                          child: Image.asset(
                            "Assets/images/money.png",
                            height: 30,
                            width: 30,
                          )),
                      Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5, bottom: 14),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'cash',
                                  style: TextStyle(
                                      color: Colors.deepPurple, fontSize: 10),
                                  // textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 30,
                        width: 25,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const addMoney()));
                          },
                          child: Icon(Icons.add_circle),
                          padding: EdgeInsets.only(right: 15),
                          color: Colors.black12,
                        ),
                      )
                    ]),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Earning()));
                    },
                    child: Container(
                      height: 30,
                      width: 90,
                      color: Colors.white,
                      child: Row(children: [
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                              "Assets/images/salary.png",
                              height: 35,
                              width: 35,
                            )),
                        Expanded(
                            flex: 5,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 14),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Earning',
                                    style: TextStyle(
                                        color: Colors.deepPurple, fontSize: 10),
                                    // textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            )),
                      ]),
                    ),
                  )
                ],
              ),
            ],
          ),
          backgroundColor: Colors.black87,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Align(
              // alignment: FractionalOffset(0.5, 0.6),
              alignment: Alignment.bottomCenter,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'Assets/images/support.jpeg',
                    width: 250.0,
                    height: 250.0,
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Container(
                    padding: EdgeInsets.all(1),
                    child: const Text(
                      'Contact us for  below Platforms.',
                      style: TextStyle(
                          // color: Colors.black87,
                          color: Color(0xFF000000),
                          fontSize: 16),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      launch('https://t.me/rkludoWinCash');
                    },
                    child: Container(
                        height: 60,
                        width: 60,
                        padding: const EdgeInsets.only(top: 80),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('Assets/images/tel.png'),
                            fit: BoxFit.fitHeight,
                          ),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      launch('https://t.me/rkludoWinCash');
                    },
                    child: Container(
                      padding: EdgeInsets.all(1),
                      child: const Text(
                        'Telegram.',
                        style: TextStyle(
                            // color: Colors.black87,
                            color: Color(0xFF000000),
                            fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  GestureDetector(
                    onTap: () {
                      launch('mailto:info@rkludo.in.com');
                    },
                    child: Container(
                        height: 60,
                        width: 60,
                        padding: const EdgeInsets.only(top: 80),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('Assets/images/mail.png'),
                            fit: BoxFit.fitHeight,
                          ),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      launch('mailto:info@rkludo.in.com');
                    },
                    child: Container(
                      padding: EdgeInsets.all(1),
                      child: const Text(
                        'info@rkludo.in',
                        style: TextStyle(
                            // color: Colors.black87,
                            color: Color(0xFF000000),
                            fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          launch('tel: + 04113137991') as String;
                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 85),
                          child: const Text(
                            '04113137991 |',
                            style: TextStyle(color: Colors.blue, fontSize: 16),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          launch('tel: + 9521575292') as String;
                        },
                        child: Container(
                          padding: const EdgeInsets.all(1),
                          child: const Text(
                            '9521575292',
                            style: TextStyle(color: Colors.blue, fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(1),
                    child: const Text(
                      '"                "Mama shakuni gaming private limited \n S-24 alankar plaza center spine vidhyadhar nagar jaipur, \n                                         '
                      '302039',
                      style: TextStyle(
                          // color: Colors.black87,
                          color: Color(0xFF000000),
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
