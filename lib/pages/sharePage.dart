import 'package:flutter/material.dart';

class sharePage extends StatefulWidget {
  const sharePage({super.key});

  @override
  State<sharePage> createState() => _sharePageState();
}

class _sharePageState extends State<sharePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Share Page"),
      ),
    );
  }
}