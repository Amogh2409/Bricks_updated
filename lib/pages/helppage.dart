import 'package:brick/widgets/customOptions.dart';
import 'package:brick/widgets/upper_header.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
              padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    upperHearder("Help", context, false),
                    customOptions("Report a Problem", context),
                    customOptions("Account Status", context),
                    customOptions("Privacy and Security Help", context),
                    customOptions("Report a Problem", context),
                    
                    customOptions("Support Requests", context),
                  ]))),
    );
  }
}
