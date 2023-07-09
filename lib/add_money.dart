import 'package:flutter/material.dart';
import 'package:ludo_project/Wallet.dart';
import 'package:ludo_project/notification.dart';
import 'package:ludo_project/openscreen.dart';
import 'package:ludo_project/referhistory.dart';
import 'package:ludo_project/support.dart';
import 'package:ludo_project/earning.dart';


class addMoney extends StatefulWidget {
  const addMoney({Key? key}) : super(key: key);
  @override
  State<addMoney> createState() => _addMoneyState();
}
class _addMoneyState extends State<addMoney> {
  TextEditingController value = TextEditingController();
  var min = 0;
  var max = 10;
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
              padding: const EdgeInsets.only(top: 50, left: 10, right: 170),
              child: const Text(
                'Choose amount to add',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30, right: 300),
              child: const Text(
                'Enter amount',
                style: TextStyle(fontSize: 11),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 15),
              child: TextField(
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                style: const TextStyle(
                  fontSize: 20,
                ),
                controller: value,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.currency_rupee_outlined,
                    size: 16,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 242, top: 6),
              child: const Text('Min: 10, Max:50000'),
            ),
             const SizedBox(
              height: 50,
              width: 50,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    value.text = '100';
                  },
                  child: Container(
                    height: 70,
                    width: 150,
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.only(top: 35, left: 30),
                    decoration: const BoxDecoration(color: Colors.black26),
                    child: const Text(
                      ' ₹ 100',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                GestureDetector(
                  onTap: () {
                    value.text = '200';
                  },
                  child: Container(
                    height: 70,
                    width: 150,
                    margin: EdgeInsets.all(15),
                    padding: const EdgeInsets.only(top: 35, left: 30),
                    decoration: const BoxDecoration(color: Colors.black26),
                    child: const Text(
                      ' ₹ 200',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    value.text = '500';
                  },
                  child: Container(
                    height: 70,
                    width: 150,
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.only(top: 35, left: 30),
                    decoration: const BoxDecoration(color: Colors.black26),
                    child: const Text(
                      ' ₹ 500',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                GestureDetector(
                  onTap: () {
                    value.text = '1000';
                  },
                  child: Container(
                    height: 70,
                    width: 150,
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.only(top: 35, left: 30),
                    decoration: const BoxDecoration(color: Colors.black26),
                    child: const Text(
                      ' ₹ 1000',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 250,
            ),
            GestureDetector(
              // onTap: (){
              //   if(
              //   min < 0
              //   );
              //   return showDialog
              //     (context: context,builder: (
              //   BuildContext c
              //   ));
              // },
              child: Container(
                height: 50,
                width: 300,
                decoration: const BoxDecoration(color: Colors.cyan),
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 120,
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// showAlertDialog(BuildContext context) {
//
//   // set up the button
//   Widget okButton = TextButton(
//     child: Text("OK"),
//     onPressed: () { },
//   );
//
//   // set up the AlertDialog
//   AlertDialog alert = AlertDialog(
//     title: Text("My title"),
//     content: Text("This is my message."),
//     actions: [
//       okButton,
//     ],
//   );
//
//   // show the dialog
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
// }