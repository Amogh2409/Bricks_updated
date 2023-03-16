// ignore_for_file: file_names, unused_local_variable

import 'package:brick/pages/HomePage.dart';
import 'package:brick/pages/registration.dart';
import 'package:flutter/material.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({super.key});

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
            body: Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/brick.png',
            height: 66,
            width: 66,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/BRICKS.png',
            height: 35,
            width: 117,
          ),
          const SizedBox(
            height: 5,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/p.png', height: 318, width: 370),

              Image.asset('assets/people.png', height: 230, width: 370),
              
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Lorem Ipsum Dolor Sit Amet',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis nec neque nunc.',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          SizedBox(
              height: 47,
              width: 154,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
                },
                style: ElevatedButton.styleFrom(
                  elevation: 7,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: Row(
                  children: const [
                    Text(
                      'Get Started',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 16,
                    )
                  ],
                ),
              )),
        ],
      ),
    )));
  }
}
