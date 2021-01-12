import 'package:designpluscode/constants.dart';
import 'package:designpluscode/model/course.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  CourseScreen({this.course});

  final Course course;

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        color: kBackgroundColor,
        child: Center(
          child: Text(widget.course.courseTitle),
        ),
      ),
    ));
  }
}
