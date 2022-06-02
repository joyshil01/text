// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/introscreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final tabLayout = width > 500;
    final largeLayout = width > 350 && width < 500;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              IntroScreen( 
                'Title of 1st page',
                'Here you can write the description of the page, to explain someting...',
                  () {
                controller.nextPage(
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.easeInOut);
              }),
              IntroScreen(
                "title of 2nd page",
                  'Here you can write the description of the page, to explain someting...',
                  () {
                controller.nextPage(
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.easeInOut);
              }),
              IntroScreen(
                'title of 3rd page',
                  'Here you can write the description of the page, to explain someting...',
                  () {
                Navigator.pushNamed(context, '/Login');
              },
              ),
            ],
          ),
          Positioned(
            top: tabLayout
                ? height * 0.40
                : largeLayout
                    ? height * 0.40
                    : height * 0.5,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                  dotColor: Colors.grey,
                  dotHeight: 9.0,
                  dotWidth: 9.0,
                  activeDotColor: Colors.green,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}