import 'package:brick/pages/settingsPage.dart';
import 'package:brick/widgets/customText.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: he * 0.04,
              ),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const settingsPage(),
                        ), 
                      ); 
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 25,
                      )),
                  SizedBox(
                    width: he * 0.01,
                  ),
                  customText("Contact Us", 28),
                  Expanded(child: Container()),
                ],
              ),
            ),
            SizedBox(
              height: he * 0.03,
            ),
            
          ],
        ),
      ),
    ));
  }
}
