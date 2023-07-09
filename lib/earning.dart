import 'package:flutter/material.dart';
import 'package:ludo_project/Wallet.dart';
import 'package:ludo_project/add_money.dart';
import 'package:ludo_project/notification.dart';
import 'package:ludo_project/openscreen.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ludo_project/support.dart';
import 'package:ludo_project/referhistory.dart';

import 'package:url_launcher/url_launcher.dart';

class Earning extends StatefulWidget {
  const Earning({Key? key}) : super(key: key);

  @override
  State<Earning> createState() => _EarningState();
}

class _EarningState extends State<Earning> {
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
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 14),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'cash',
                                      style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 10),
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
                                        builder: (context) =>
                                            const addMoney()));
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
                      Container(
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
                                          color: Colors.deepPurple,
                                          fontSize: 10),
                                      // textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              )),
                        ]),
                      )
                    ],
                  ),
                ],
              ),
              backgroundColor: Colors.black87,
            ),
            body: Column(
                children: [
              Container(
                color: Colors.white12,
                padding: EdgeInsets.only(top: 10, right: 160),
                child: const Text(
                  'Redeem your refer balance',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 8, left: 2),
                child: const Text(
                  'TDS (0%) will be deducated after annual referral earning of ₹ 15,000. ',
                  style: TextStyle(fontSize: 11.5, color: Colors.black54),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 8, right: 180),
                height: 28,
                child: const SizedBox(
                  height: 3,
                  child: Text(
                    'Enter Amount (Min:100,Max:10000)',
                    style: TextStyle(fontSize: 11.5, color: Colors.black54),
                  ),
                ),
              ),
              Padding(
                padding:  const EdgeInsets.only(right: 30, left: 15, top: 15),
                child: TextField(
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    style: const TextStyle(height: 0.5, fontSize: 13),
                    decoration: InputDecoration(
                      fillColor: Colors.white12,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black26),
                          borderRadius: BorderRadius.circular(1.0),
                        ),
                        hintText: "Enter Amount")
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5,right: 209),
                child: const Text(
                  'Minimum withdraw amount is ₹95',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.deepOrangeAccent
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5,right: 144),
                child: const Text(
                  "Money will be added to RK Ludo cash",
                  style: TextStyle(
                      fontSize: 13,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.blue,
                   padding: const EdgeInsets.only(top:15,left: 15),
                  child: const Text(
                    "REDEEM",style: TextStyle(
                    fontSize: 11.5
                  ),
                  ),
                ),
              )
            ])));
  }
}
