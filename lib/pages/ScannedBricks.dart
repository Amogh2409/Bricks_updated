import 'package:brick/pages/HomePage.dart';
import 'package:brick/utils/ThemeColor.dart';
import 'package:brick/widgets/customText.dart';
import 'package:flutter/material.dart';

class ScannedBricks extends StatefulWidget {
  const ScannedBricks({super.key});

  @override
  State<ScannedBricks> createState() => _ScannedBricksState();
}

class _ScannedBricksState extends State<ScannedBricks> {
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
                top: he * 0.03,
              ),
              child: Row(
                children: [
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
                        color: Colors.black,
                        size: 25,
                      )),
                  SizedBox(
                    width: he * 0.01,
                  ),
                  customText("Scanned Bricks", 28),
                  Expanded(child: Container()),
                ],
              ),
            ),
            SizedBox(
              height: he * 0.03,
            ),
            customText("Previously Scanned Bricks", 20),
            const Text(
              "ideas waiting for you",
              style: TextStyle(
                fontSize: 18,
                color: MyThemeColor.subText,
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(top: he * 0.025),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset('assets/Scan1.jpeg')),
                            Container(
                                height: he * 0.05,
                                width: he * 0.05,
                                decoration: BoxDecoration(
                                    color: MyThemeColor.backgroundColor,
                                    borderRadius: BorderRadius.circular(30)),
                                child: const Icon(
                                  Icons.play_arrow,
                                  color: Colors.blue,
                                  size: 35,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Lorem ipsum Dolor',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: MyThemeColor.textColor),
                                ),
                                Text('50 Bricks',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: MyThemeColor.subText)),
                              ],
                            ),
                            Expanded(child: Container()),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.bookmark_border,
                                  size: 30,
                                  color: MyThemeColor.textColor,
                                )),
                          ],
                        ),
                        SizedBox(
                          height: he * 0.01,
                        ),
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    ));
  }
}
