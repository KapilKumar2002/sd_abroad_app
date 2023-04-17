import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/exam/exam_course.dart';
import 'package:sd_abroad_app/views/exam/exam_overview.dart';
import 'package:sd_abroad_app/views/exam/ranking.dart';

class IELTSExamScreen extends StatefulWidget {
  const IELTSExamScreen({super.key});

  @override
  State<IELTSExamScreen> createState() => _IELTSExamScreenState();
}

class _IELTSExamScreenState extends State<IELTSExamScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final tab = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        backgroundColor: transparent,
        elevation: 0,
        title: Text(
          "Exam Preparation-IELTS",
          style: bodyText16normal(black),
        ),
        bottom: TabBar(
          tabs: [
            Tab(
              text: "Overview",
            ),
            Tab(
              text: "Courses",
            ),
          ],
          indicatorSize: TabBarIndicatorSize.label,
          controller: tab,
          labelStyle: bodyText16Bold(primaryColor),
          labelColor: primaryColor,
          unselectedLabelColor: black,
          indicatorColor: Color(0xff5F71E4),
          indicatorWeight: 2.5,
        ),
      ),
      body: Container(
        height: 1500,
        color: background,
        child: TabBarView(controller: tab, children: [
          Exam_Overview(),
          ExamCourse(),
          Ranking(),
        ]),
      ),
    );
  }
}
