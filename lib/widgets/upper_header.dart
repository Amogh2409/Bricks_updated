import 'package:brick/pages/menuPage.dart';
import 'package:brick/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

Widget upperHearder( String text, BuildContext context, bool isIcon) {
  var he = MediaQuery.of(context).size.height;
  return Padding(
    padding: EdgeInsets.only(
      top: he * 0.03,
    ),
    child: Row(
      children: [
        GestureDetector(
            onTap: () {
              Navigator.push(
                context as BuildContext,
                MaterialPageRoute(
                  builder: (context) => const menuPage(),
                ),
              );
            },
            child: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 30,
            )),
        SizedBox(
          width: he * 0.03,
        ),
        customText(text, 28),
        Expanded(child: Container()),
        isIcon
            ? GestureDetector(
                onTap: () {
                  Navigator.push(
                    context as BuildContext,
                    MaterialPageRoute(
                      builder: (context) => const menuPage(),
                    ),
                  );
                },
                child: const Icon(
                  Icons.mail_outlined,
                  color: Colors.black,
                  size: 30,
                ))
            : Container(),
      ],
    ),
  );
}
