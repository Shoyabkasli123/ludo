
import 'package:flutter/material.dart';
import 'package:ludo_project/Wallet.dart';
import 'package:ludo_project/add_money.dart';
import 'package:ludo_project/referhistory.dart';
import 'package:ludo_project/support.dart';
import 'package:ludo_project/notification.dart';
import 'package:ludo_project/earning.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenScreen extends StatelessWidget {
  const OpenScreen({Key? key}) : super(key: key);
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
                 leading: Image.asset(
                    'Assets/images/ludo.jpg',
                  ),
                  title: const Text(
                    'My Profile',
                    style: TextStyle(fontSize: 15),
                  ),
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
                  leading: const Icon(Icons.ad_units_sharp),
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
        body: const FirstScreen(),
      ),
    );
  }
}
class FirstScreen extends StatefulWidget {
  final String? title;
  const FirstScreen({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}
class _FirstScreenState extends State<FirstScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 12, left: 74),
                child: const Text(
                  "Contact Number:",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => launch("tel:/9521575292"),
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 12),
                  child: const Text(
                    " 9521575292",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
              )
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(top: 30),
            child: const Text(
              'Our Games',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            height: 25,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 134, bottom: 3),
                child: FadeTransition(
                  opacity: _controller,
                  child: const Text(
                    " 🔥 LIVE",
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 140, bottom: 3),
                child: FadeTransition(
                  opacity: _controller,
                  child: const Text(
                    " 🔥 LIVE",
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          Row(
              children: [
            Container(
              height: 180,
              width: 180,
              margin: const EdgeInsets.all(2),
              padding: const EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage(
                    'Assets/images/1.jpeg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 15,
            ),
            Container(
              // padding: const EdgeInsets.all(15),
              height: 180,
              width: 180,
              margin: const EdgeInsets.all(2),
              padding: const EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // border: Border.all(width: 1),
                image: const DecorationImage(
                  image: AssetImage(
                    'Assets/images/2.jpeg',
                  ),
                  // fit: BoxFit.fill,
                ),
              ),
            ),
          ]),
          Row(
            children: [
              Container(
                height: 40,
                width: 181,
                padding: EdgeInsets.only(left: 35, top: 12),
                child: const Text(
                  "Ludo Classics",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(color: Colors.black, width: 0.2),
                  right: BorderSide(color: Colors.black, width: 0.2),
                  left: BorderSide(color: Colors.black, width: 0.2),
                )),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 40,
                width: 181,
                padding: EdgeInsets.only(left: 35, top: 12),
                child: const Text(
                  "Ludo  Popular",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(color: Colors.black, width: 0.2),
                  right: BorderSide(color: Colors.black, width: 0.2),
                  left: BorderSide(color: Colors.black, width: 0.2),
                )),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
            height: 25,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 134, bottom: 3),
                child: FadeTransition(
                  opacity: _controller,
                  child: const Text(
                    " 🔥 LIVE",
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 140, bottom: 3),
                child: FadeTransition(
                  opacity: _controller,
                  child: const Text(
                    " 🔥 LIVE",
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          Row(children: [
            Container(
              height: 180,
              width: 180,
              margin: const EdgeInsets.all(2),
              padding: const EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('Assets/images/3.jpeg'),
                  // fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: 15,
            ),
            Container(
              height: 180,
              width: 180,
              margin: const EdgeInsets.all(2),
              padding: const EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // border: Border.all(width: 1),
                image: const DecorationImage(
                  image: AssetImage('Assets/images/4.jpeg'),
                  // fit: BoxFit.fill,
                ),
              ),
            ),
          ]),
          Row(
            children: [
              Container(
                height: 40,
                width: 181,
                padding: EdgeInsets.only(left: 35, top: 12),
                child: const Text(
                  "Ludo no cut ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(color: Colors.black, width: 0.2),
                  right: BorderSide(color: Colors.black, width: 0.2),
                  left: BorderSide(color: Colors.black, width: 0.2),
                )),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 40,
                width: 181,
                padding: EdgeInsets.only(left: 50, top: 12),
                child: const Text(
                  "Ludo ulta",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(color: Colors.black, width: 0.2),
                  right: BorderSide(color: Colors.black, width: 0.2),
                  left: BorderSide(color: Colors.black, width: 0.2),
                )),
              ),
            ],
          ),

          const SizedBox(height: 100, width: 100),
          const SizedBox(
            height: 40,
            child: Text(
              'About Us',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 50,
            child: Text(
              'RK Ludo is a real-money gaming product owned and operated '
              'by Mama Shakuni Private Limited ("RK Ludo" or "We" or "Us" or "Our").',
              style: TextStyle(fontSize: 11, color: Colors.black54),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 40,
            child: Text(
              ' Our Business & Product',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
          const Text(
            'We are an HTML5 game-publishing company and'
            ' our mission is to make accessing games fast and easy by removing the friction of app-installs.',
            style: TextStyle(fontSize: 11, color: Colors.black54),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            ' RK Ludo is a skill-based real-money gaming platform accessible only for our users in India. It is accessible on https://www.RK Ludo.in. On RK Ludo, users can compete for real cash in Tournaments and Battles. They can encash their winnings via popular options such as Paytm Wallet, Amazon Pay, Bank Transfer, Mobile Recharges etc.',
            style: TextStyle(fontSize: 11, color: Colors.black54),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 40,
            child: Text(
              ' Our Games',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'RK Ludo has a wide-variety of high-quality, premium HTML5 games. Our games are especially compressed and optimised to work on low-end devices, uncommon browsers, and patchy internet speeds.',
            style: TextStyle(fontSize: 11, color: Colors.black54),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            ' We have games across several popular categories: Arcade, Action, Adventure, '
            'Sports & Racing, Strategy, Puzzle & Logic. We also have a strong portfolio of multiplayer '
            'games such as Ludo, Chess, 8 Ball Pool, Carrom, Tic Tac Toe, Archery, Quiz, Chinese Checkers '
            'and more! Some of our popular titles are: Escape Run, Bubble Wipeout, Tower Twist, Cricket Gunda, Ludo '
            'With Friends. If you have any suggestions around new games that we should add or if you are a game '
            'developer yourself and want to work with us, don t hesitate to drop in a line at info@rkludo.in!',
            style: TextStyle(fontSize: 11, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
