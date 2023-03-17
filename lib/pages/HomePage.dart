import 'package:brick/pages/ScannedBricks.dart';
import 'package:brick/pages/menuPage.dart';
import 'package:brick/pages/profilePage.dart';
import 'package:brick/pages/scanPage.dart';
import 'package:brick/pages/settingsPage.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Size size;
  late double height;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height -
        56 -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: SafeArea(
          child: Container(
            color: Colors.grey.shade200,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  height: 56,
                  padding: const EdgeInsets.only(
                      top: 4.0, left: 8.0, right: 8.0, bottom: 4.0),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const menuPage()));
                          },
                          child: Icon(Icons.menu, size: 40)),
                      Expanded(child: Container()),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProfilePage()));
                        },
                        child: Container(
                            padding: EdgeInsets.only(top: 4.0),
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/brick.png',
                              fit: BoxFit.cover,
                            )),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    option(
                      icon: Icons.fullscreen,
                      title: "Scan my Bricks",
                      color: Colors.orange.shade300,
                      callback: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const scanPage(),
                          ),
                        );
                      },
                    ),
                    option(
                      icon: Icons.save_outlined,
                      title: "My Mocs",
                      color: Colors.red.shade300,
                      callback: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    option(
                      icon: Icons.shopping_bag_outlined,
                      title: "Purchase New Bricks",
                      color: Colors.lightBlue,
                      callback: () {},
                    ),
                    option(
                      icon: Icons.storage_rounded,
                      title: "My Scanned Brick",
                      color: const Color.fromARGB(255, 70, 217, 77),
                      callback: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ScannedBricks(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget option(
          {required IconData icon,
          required String title,
          required Color color,
          required VoidCallback callback}) =>
      GestureDetector(
        onTap: () => callback(),
        child: Container(
          color: color,
          height: height * 0.5,
          width: size.width * 0.5,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.grey.shade800,
                size: 70,
              ),
              const SizedBox(height: 12),
              Text(title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 26, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      );
}
