// ignore_for_file: file_names, camel_case_types

import 'package:brick/pages/HomePage.dart';
import 'package:brick/pages/contactUs.dart';
import 'package:brick/pages/settingsPage.dart';
import 'package:brick/utils/ThemeColor.dart';
import 'package:brick/widgets/customText.dart';
import 'package:flutter/material.dart';

class menuPage extends StatefulWidget {
  const menuPage({super.key});

  @override
  State<menuPage> createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: he * 0.03, bottom: he * 0.0),
                child: Row(children: [
                  Expanded(child: Container()),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.close_rounded,
                        size: 30,
                      )),
                  SizedBox(
                    width: he * 0.01,
                  ),
                ]),
              ),
              SizedBox(
                height: he * 0.09,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactUs(),
                    ),
                  );
                },
                child: Text(
                  'Contact Us',
                  
                  style: TextStyle(fontSize: 30, ),
                ),
              ),
              SizedBox(
                height: he * 0.035,
              ),
              Text(
                'Backups',
                
                style: TextStyle(fontSize: 30, ),
              ),
              SizedBox(
                height: he * 0.035,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const settingsPage(),
                    ),
                  );
                },
                child: Text(
                  'Settings',
                  
                  style: TextStyle(fontSize: 30, ),
                ),
              ),
              SizedBox(
                height: he * 0.035,
              ),
              Text(
                'Help',
                
                style: TextStyle(fontSize: 30, ),
              ),
              SizedBox(
                height: he * 0.035,
              ),
              Text(
                'Quit',
                
                style: TextStyle(fontSize: 30, ),
              ),
              SizedBox(
                height: he * 0.035,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
