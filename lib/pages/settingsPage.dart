// ignore_for_file: file_names, camel_case_types

import 'package:brick/pages/HomePage.dart';
import 'package:brick/pages/contactUs.dart';
import 'package:brick/pages/menuPage.dart';
import 'package:brick/utils/ThemeColor.dart';
import 'package:brick/widgets/customText.dart';
import 'package:flutter/material.dart';

class settingsPage extends StatefulWidget {
  const settingsPage({super.key});

  @override
  State<settingsPage> createState() => _settingsPageState();
}


class _settingsPageState extends State<settingsPage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: he * 0.04, bottom: he * 0.0),
                child: Row(children:[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const menuPage(),
                        ), 
                      );
                    },
                    
                    child: const Icon(Icons.arrow_back_ios, size: 25,))
                  ,
                  SizedBox(width: he * 0.01,),
                  customText("Settings", 28),
                  Expanded(child: Container()),
                  ] ),
              ),
              SizedBox(
                height: he * 0.035,
              ),
              Container(
                padding: EdgeInsets.all(he * 0.004),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 208, 240, 1),
                        Color.fromARGB(255, 253, 170, 53),
                      ]),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[200],
                  ),
                  padding: EdgeInsets.all(he * 0.012),
                  child: Row(children: [
                    Container(
                        height: he * 0.07,
                        width: he * 0.07,
                        padding: EdgeInsets.all(he * 0.01),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[300],
                        ),
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                              const Color.fromARGB(255, 224, 224, 224)
                                  .withOpacity(0.6),
                              BlendMode.srcATop),
                          child: Image.asset(
                            "assets/brick.png",
                            fit: BoxFit.cover,
                          ),
                        )),
                    SizedBox(
                      width: he * 0.015,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            customText('Bricks', 26),
                            SizedBox(
                              width: he * 0.005,
                            ),
                            const Icon(Icons.add,
                                size: 25, color: Color.fromARGB(255, 141, 127, 65))
                          ],
                        ),
                        SizedBox(height: he * 0.0005),
                        const Text(
                          "Unlock our most exclusive features",
                          style: TextStyle(
                              fontSize: 14, color: MyThemeColor.textColor),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 22, 23, 22),
                      size: 20,
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: he * 0.025,
              ),
              Row(
                children: [
                  Icon(Icons.privacy_tip_outlined, size: 25, color: MyThemeColor.textColor),
                  SizedBox(
                    width: he * 0.015,
                  ),
                  const Text(
                    "Privacy & Security",
                    style:
                        TextStyle(fontSize: 18, color: MyThemeColor.textColor),
                  ),
                  Expanded(child: Container()),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: MyThemeColor.textColor,
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: he * 0.025,
              ),
              Row(
                children: [
                  Icon(Icons.volume_down_outlined, size: 25, color: MyThemeColor.textColor),
                  SizedBox(
                    width: he * 0.015,
                  ),
                  const Text(
                    "Sounds",
                    style:
                        TextStyle(fontSize: 18, color: MyThemeColor.textColor),
                  ),
                  Expanded(child: Container()),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: MyThemeColor.textColor,
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: he * 0.025,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const AboutApp(),
                  //   ),
                  // );
                },
                child: Row(
                  children: [
                    Icon(Icons.info_outline, size: 25, color: MyThemeColor.textColor),
                  SizedBox(
                    width: he * 0.015,
                  ),
                    const Text(
                      "About App",
                      style:
                          TextStyle(fontSize: 18, color: MyThemeColor.textColor),
                    ),
                    Expanded(child: Container()),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: MyThemeColor.textColor,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: he * 0.025,
              ),
              
            
              
              Row(
                children: [
                  Icon(Icons.notifications_active_outlined, size: 25, color: MyThemeColor.textColor),
                  SizedBox(
                    width: he * 0.015,
                  ),
                  const Text(
                    "Notifications",
                    style:
                        TextStyle(fontSize: 18, color: MyThemeColor.textColor),
                  ),
                  Expanded(child: Container()),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: MyThemeColor.textColor,
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: he * 0.025,
              ),
              const Divider(
                color: Colors.blue,
                thickness: 1,
              ),
              SizedBox(
                height: he * 0.02,
              ),
              // const Text(
              //   "Help Center",
              //   style: TextStyle(fontSize: 17, color: MyThemeColor.textColor),
              // ),
              // SizedBox(
              //   height: he * 0.02,
              // ),
              const Text(
                "Privacy Policy",
                style: TextStyle(fontSize: 17, color: MyThemeColor.textColor),
              ),
              
              SizedBox(
                height: he * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  // saveUser();

                  // Navigator.pushReplacement(context,
                  //     MaterialPageRoute(builder: (context) => const Navbar()));
                },
                child: const Text(
                  "Sign Out",
                  style: TextStyle(fontSize: 17, color: MyThemeColor.textColor),
                ),
              ),
              SizedBox(
                height: he * 0.02,
              ),
              const Text(
                "VERSION:1.2.354",
                style: TextStyle(fontSize: 17, color: MyThemeColor.textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}