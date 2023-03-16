// ignore_for_file: unused_import

import 'package:brick/pages/gettingStarted.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pages/splashScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  await sharedPreferences.setString("user", "");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bricks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
