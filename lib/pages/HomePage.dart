
import 'package:brick/pages/ScannedBricks.dart';
import 'package:brick/pages/menuPage.dart';
import 'package:brick/pages/scanPage.dart';
import 'package:brick/pages/settingsPage.dart';


import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 4.0, left: 8.0, right: 8.0, bottom: 4.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const menuPage()));
                      },
                      child: Icon(Icons.menu, size: 40)),
                    Expanded(child: Container()),
                    Container(
                        padding: EdgeInsets.only(top: 4.0),
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          'assets/brick.png',
                          fit: BoxFit.cover,
                        ))
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const scanPage(),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          color: Colors.orange.shade300,
                            height: size * 0.44,
                            width: size * 0.228,
                            child: Column(
                              children: [
                                Expanded(child: Container()),
                                 Icon(
                                  Icons.fullscreen,
                                  color: Colors.grey.shade800,
                                  size: 70,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Scan my Bricks",
                                textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                                Expanded(child: Container()),
                              ],
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: Container(
                            color: Colors.lightBlue,
                            height: size * 0.44,
                            width: size * 0.228,
                            child: Column(
                              
                              children: [
                                Expanded(child: Container()),
                                 Icon(
                                  Icons.shopping_bag_outlined,
                                  color: Colors.grey.shade800,
                                  size: 70,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Purchase New Bricks",
                                textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                                Expanded(child: Container()),
                              ],
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size,
                    width: 2,
                  ),
                  Column(
                    children: [
                      Container(
                        color: Colors.red.shade300,
                        height: size * 0.44,
                        width: size * 0.23,
                        child: GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Expanded(child: Container()),
                                Icon(
                                  Icons.save_outlined,
                                  color: Colors.grey.shade800,
                                  size: 70,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("My Mocs",
                                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                                Expanded(child: Container()),
                              ],
                            )),
                      ),
                      Container(
                        color: Color.fromARGB(255, 70, 217, 77),
                        height: size * 0.44,
                        width: size * 0.23,
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ScannedBricks(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Expanded(child: Container()),
                                 Icon(
                                  Icons.storage_rounded,
                                  color: Colors.grey.shade800,
                                  size: 70,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("My Scanned Brick",
                                textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                                Expanded(child: Container()),
                              ],
                            )),
                      ),
                    ],
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
