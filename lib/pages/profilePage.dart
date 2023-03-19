// ignore_for_file: prefer_const_constructors

import 'package:brick/pages/HomePage.dart';
import 'package:brick/utils/ThemeColor.dart';
import 'package:brick/widgets/customText.dart';

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyThemeColor.backgroundColor,
      body: SafeArea(
          bottom: false,
          child: Container(
            padding: EdgeInsets.only(
                top: he * 0.03,
                bottom: he * 0.05,
                left: he * 0.03,
                right: he * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                padding: EdgeInsets.only( bottom: he * 0.04),
                child: Row(children: [
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
                        Icons.arrow_back_ios,
                        size: 25,
                      )),
                  SizedBox(
                    width: he * 0.01,
                  ),
                  customText("My Profile", 28),
                  Expanded(child: Container()),
                ]),
              ),
                CircleAvatar(
                  radius: 43,
                  backgroundImage: AssetImage("assets/Profile.jpeg"),
                ),
                SizedBox(
                  height: 15,
                ),
                customText("Welcome, Amogh", 30),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "First Name:",
                  style: TextStyle(color: MyThemeColor.textColor, fontSize: 16),
                ),
                SizedBox(
                  height: 7,
                ),
                SizedBox(
                  height: he * 0.045,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 12, left: 10),
                      hintText: "Amogh",
                      hintStyle: TextStyle(color: MyThemeColor.textColor),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: MyThemeColor.textColor)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: MyThemeColor.textColor)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: MyThemeColor.textColor)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Last Name:",
                  style: TextStyle(color: MyThemeColor.textColor, fontSize: 16),
                ),
                SizedBox(
                  height: 7,
                ),
                SizedBox(
                  height: he * 0.045,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 12, left: 10),
                      hintText: "Saxena",
                      hintStyle: TextStyle(color: MyThemeColor.textColor),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: MyThemeColor.textColor)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: MyThemeColor.textColor)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: MyThemeColor.textColor)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Username:",
                  style: TextStyle(color: MyThemeColor.textColor, fontSize: 16),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: he * 0.045,
                      width: he * 0.23,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 12, left: 10),
                          hintText: "Amogh",
                          hintStyle: TextStyle(color: MyThemeColor.textColor),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: MyThemeColor.textColor)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: MyThemeColor.textColor)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: MyThemeColor.textColor)),
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Change username",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Mobile Number:",
                  style: TextStyle(color: MyThemeColor.textColor, fontSize: 16),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: he * 0.045,
                      width: he * 0.23,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 12, left: 10),
                          hintText: "+21 1234567891",
                          hintStyle: TextStyle(color: MyThemeColor.textColor),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: MyThemeColor.textColor)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: MyThemeColor.textColor)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: MyThemeColor.textColor)),
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Change Number",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Email ID:",
                  style: TextStyle(color: MyThemeColor.textColor, fontSize: 16),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: he * 0.045,
                      width: he * 0.23,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 12, left: 10),
                          hintText: "amoghsaxena24@gmail.com",
                          hintStyle: TextStyle(color: MyThemeColor.textColor),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: MyThemeColor.textColor)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: MyThemeColor.textColor)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: MyThemeColor.textColor)),
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Change Email ID",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      "Add Account",
                      style: TextStyle(
                          fontSize: 18, color: MyThemeColor.textColor),
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
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      "Switch Account",
                      style: TextStyle(
                          fontSize: 18, color: MyThemeColor.textColor),
                    ),
                    Expanded(child: Container()),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: MyThemeColor.textColor,
                      size: 20,
                    )
                  ],
                ),
                Expanded(child: Container()),
                Row(
                  children: [
                    const Text(
                      "Log Out",
                      style: TextStyle(
                          fontSize: 16, color: MyThemeColor.textColor),
                    ),
                    Expanded(child: Container()),
                    const Icon(
                      Icons.logout,
                      color: MyThemeColor.textColor,
                      size: 20,
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
