// ignore_for_file: prefer_const_constructors, prefer_const_declarations, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/OnBoardingPage.dart';
import 'package:flutter_application_1/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Onboarding Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        home: OnBoardingPage(),
        routes: {
          '/Login' :(context) => Login(),
        },
      );
}
