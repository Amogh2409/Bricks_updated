// ignore_for_file: camel_case_types
// ignore: file_names
// ignore_for_file: use_build_context_synchronously

import 'package:brick/pages/HomePage.dart';
import 'package:brick/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:developer';
import '../utils/ThemeColor.dart';

class scanPage extends StatefulWidget {
  const scanPage({super.key});

  @override
  State<scanPage> createState() => _scanPageState();
}

class _scanPageState extends State<scanPage> {
  File? imageFile;

  Future<void> _getFromCamera() async {
    XFile? pickedFile = await ImagePicker()
        .pickImage(source: ImageSource.camera, maxHeight: 1080, maxWidth: 1080);
    // setState(() {
    //   imageFile = File(pickedFile!.path);
    // });
    // Navigator.pop(context);

    if (pickedFile != null) {
      showDialog(
          context: context,
          builder: (context) {
            return SizedBox(
              height: 200,
              width: 200,
              child: AlertDialog(actions: [
                Image.file(File(pickedFile.path)),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Processing...",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: MyThemeColor.textColor),
                )
              ]),
            );
          });
      Future.delayed(const Duration(seconds: 3)).then((_) {
        Navigator.pop(context);
      });

      log(pickedFile.path.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: he * 0.03, bottom: he * 0.05),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) => const HomePage()));
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 25,
                        ),
                        ),
                      SizedBox(
                        width: he * 0.01,
                      ),
                      customText("Ready to play? \nTap to Scan bricks", 24),
                      Expanded(child: Container()),
                      
                    ],
                  ),
                ),
                SizedBox(
                  height: he * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    _getFromCamera();
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: he * 0.33,
                        width: he * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.green[50],
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      Container(
                        height: he * 0.1,
                        width: he * 0.1,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(33, 201, 152, 1),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      const Icon(
                        Icons.qr_code_scanner_outlined,
                        color: Colors.white,
                        size: 65,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: he * 0.03,
                ),
                customText("Example", 22),
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
                                        borderRadius:
                                            BorderRadius.circular(30)),
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
        ),
      ),
    );
  }
}
