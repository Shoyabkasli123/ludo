import 'package:flutter/material.dart';
import 'package:ludo_project/Wallet.dart';
import 'package:ludo_project/earning.dart';
import 'package:ludo_project/notification.dart';
import 'package:ludo_project/openscreen.dart';
import 'package:ludo_project/referhistory.dart';
import 'package:ludo_project/support.dart';

class addMoney extends StatefulWidget {
  const addMoney({Key? key}) : super(key: key);

  @override
  State<addMoney> createState() => _addMoneyState();
}

class _addMoneyState extends State<addMoney> {
  TextEditingController value = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: false,
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
                            padding: const EdgeInsets.only(left: 5, bottom: 14),
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
    ));
  }
}
