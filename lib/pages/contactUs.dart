import 'package:brick/pages/menuPage.dart';
import 'package:brick/pages/settingsPage.dart';
import 'package:brick/widgets/customText.dart';
import 'package:brick/widgets/upper_header.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
                   upperHearder("Contacts", context, true),
                    
                    SingleChildScrollView(
                      child: Container(
                          height: he * 0.3,
                          width: he * 0.35,
                          // color: Colors.grey,
                          
                          child: Image.asset("assets/png.png", fit: BoxFit.contain,)),
                    ),
                      
                    Text("Contact Us",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    SizedBox(
                      height: 15,
                    ),
                    
                    Container(
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: double.infinity,
                      child: Padding(
                          padding: EdgeInsets.only(
                            left: he * 0.03,
                            right: he * 0.03,
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Name',
                                    hintText: 'Enter your name',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    hintText: 'Enter your email',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    labelText: 'Message',
                                    hintText: 'Enter your message',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              ])),
                    )
                  ]),
            )));
  }
}
