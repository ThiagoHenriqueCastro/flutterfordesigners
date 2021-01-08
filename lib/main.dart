import 'package:designpluscode/components/homescreen_navbar.dart';
import 'package:designpluscode/components/lists/explore_course_list.dart';
import 'package:designpluscode/components/lists/recent_course_list.dart';
import 'package:designpluscode/constants.dart';
import 'package:designpluscode/screens/home_screen.dart';
import 'package:designpluscode/screens/sidebar_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
