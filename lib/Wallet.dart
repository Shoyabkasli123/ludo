import 'package:flutter/material.dart';
import 'package:ludo_project/add_money.dart';
import 'package:ludo_project/earning.dart';
import 'package:ludo_project/notification.dart';
import 'package:ludo_project/openscreen.dart';
import 'package:ludo_project/referhistory.dart';
import 'package:ludo_project/support.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            builder: (context) => const Wallet()));
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
                          child: const Icon(Icons.add_circle),
                          padding: const EdgeInsets.only(right: 15),
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
        body: Column(
          children: [
            Container(
              height: 70,
              width: 400,
              margin: const EdgeInsets.all(30.0),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black38)),
              child: Row(
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.history,
                        size: 35,
                      ),
                      label: const Text(
                        "                  Order History",
                        style: TextStyle(color: Colors.black38),
                      )),
                ],
              ),
            ),
            const SizedBox(
                height: 20,
                width: 410,
                child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.black38))),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  height: 115,
                  width: 190,
                  margin: const EdgeInsets.only(left: 15),
                  // padding: const EdgeInsets.only(left: 25,top: 30),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.zero,
                        topRight: Radius.zero,
                        bottomRight: Radius.zero),
                    color: Colors.blueAccent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 45),
                    child: Row(
                      children: [
                        Image.asset(
                          "Assets/images/money.png",
                          width: 40,
                          height: 25,
                        ),
                        const Text(
                          "₹0 "
                          "\n  DEPOSIT CASH",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
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
                            builder: (context) => const addMoney()));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          bottomLeft: Radius.zero,
                          topRight: Radius.circular(10),
                          bottomRight: Radius.zero),
                      color: Colors.blueAccent,
                    ),
                    padding: const EdgeInsets.only(top: 25, left: 70),
                    height: 115,
                    width: 190,
                    child: const Text(
                      "ADD CASH",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 40),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.zero,
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.blueAccent,
              ),
              height: 115,
              width: 380,
              child: const Text(
                "  Can be used to play Tournaments & Battles. \n  Cannot be withdraw to Paytm or Bank",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  height: 115,
                  width: 190,
                  margin: EdgeInsets.only(left: 15),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.zero,
                        topRight: Radius.zero,
                        bottomRight: Radius.zero),
                    color: Colors.cyan,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 45),
                    child: Row(
                      children: [
                        Image.asset(
                          "Assets/images/money.png",
                          width: 40,
                          height: 25,
                        ),
                        const Text(
                          "₹0 "
                          "\n  WINNING CASH",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.zero,
                        bottomLeft: Radius.zero,
                        topRight: Radius.circular(10),
                        bottomRight: Radius.zero),
                    color: Colors.cyan,
                  ),
                  padding: const EdgeInsets.only(top: 25, left: 70),
                  height: 115,
                  width: 190,
                  child: const Text(
                    "WITHDRAW",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 40),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.zero,
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.cyan,
              ),
              height: 115,
              width: 380,
              child: const Text(
                " Can be withdraw to Paytm or Bank. Can be used to \n play Tournaments & Battles. ",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            )
          ],
        ));
  }
}
