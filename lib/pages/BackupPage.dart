import 'package:brick/pages/menuPage.dart';
import 'package:brick/pages/settingsPage.dart';
import 'package:brick/widgets/customText.dart';
import 'package:flutter/material.dart';

class BackupsPage extends StatefulWidget {
  const BackupsPage({super.key});

  @override
  State<BackupsPage> createState() => _BackupsPageState();
}

class _BackupsPageState extends State<BackupsPage> {
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
                          builder: (context) => const menuPage(),
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
                  customText("Backups", 28),
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
