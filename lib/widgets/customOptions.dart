import 'package:brick/pages/menuPage.dart';
import 'package:brick/widgets/customText.dart';
import 'package:flutter/material.dart';

Widget customOptions(String text, BuildContext context) {
  var he = MediaQuery.of(context).size.height;
  return Padding(
    padding: EdgeInsets.only(
      top: he * 0.03,
    ),
    child: Row(
      children: [
        
        
        Text(
          text,
          style: const TextStyle(fontSize: 21),
        ),
        Expanded(child: Container()),
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
              Icons.arrow_forward_ios_sharp,
              color: Colors.black,
              size: 21,
            )),
      ],
    ),
  );
}
