// ignore_for_file: file_names

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<bool> saveUser() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  bool result = await sharedPreferences.setString("user", "user");

  log(result.toString());

  return result;
}

Widget customButton(
    String url, Color color, String text, BuildContext context) {
  var he = MediaQuery.of(context).size.height;
  return SizedBox(
    height: he * 0.053,
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {
        saveUser();
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Background color
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: he * 0.031,
            child: Image.network(url, fit: BoxFit.cover),
          ),
          SizedBox(
            width: he * 0.06,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 16),
          )
        ],
      ),
    ),
  );
}
