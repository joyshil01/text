// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onPressed;
  IntroScreen(this.title, this.description, this.onPressed);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

   
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.08),
                  Text(title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25)),
                  SizedBox(height: height * 0.05),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: height * 0.05),
                  InkWell(
                    onTap: onPressed,
                    child: Container(
                      width: width * 0.20,
                      height: height * 0.05,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10,
                                offset: Offset(1, 2),),
                          ]),
                      child: const Center(
                        child: Text('Next',
                            style: TextStyle(
                                color: Colors.white,

                                fontSize: 18)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}