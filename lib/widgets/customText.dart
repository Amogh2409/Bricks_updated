import 'package:flutter/material.dart';

import '../utils/ThemeColor.dart';

Widget customText(String text, double size) {
  return Text(
    text,
    style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: MyThemeColor.textColor),
  );
}
