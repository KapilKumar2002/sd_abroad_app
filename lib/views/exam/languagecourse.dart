import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/exam/ielts.dart';
import 'package:sd_abroad_app/widgets/customdropdown.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class LanguageCourses extends StatefulWidget {
  const LanguageCourses({super.key});

  @override
  State<LanguageCourses> createState() => _LanguageCoursesState();
}

class _LanguageCoursesState extends State<LanguageCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        backgroundColor: transparent,
        elevation: 0,
        title: Text(
          "Language Courses",
          style: bodyText16normal(black),
        ),
      ),
      body: Container(
        color: background,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: decoration(white, 12),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomDropDown(
                        radius: 6,
                        list: [],
                        bcolor: black.withOpacity(.4),
                        height: 25,
                        hint: "Spanish",
                        width: 75,
                        textStyle: bodyText10w500(black.withOpacity(.4)),
                        iconSize: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: transparent,
                        backgroundImage: AssetImage("assets/images/rakesh.png"),
                      )
                    ],
                  ),
                  verticalSpace(10),
                  Text(
                    "Hello, Karan",
                    style: bodyText12w500(black),
                  ),
                  Text(
                    "Continue to Spanish!",
                    style: bodyText18Bold(black),
                  )
                ],
              ),
            ),
            verticalSpace(25),
            Text(
              "Your Lessons",
              style: bodyText16Bold(black),
            ),
            verticalSpace(14),
            Container(
              decoration: decoration(white, 12),
              child: ListTile(
                onTap: () {
                  nextScreen(context, IELTSExamScreen());
                },
                title: Text(
                  "Reading",
                  style: bodyText16w500(black),
                ),
                subtitle: Text(
                  "You completed 74%",
                  style: bodyText10w500(black.withOpacity(.5)),
                ),
                leading: Image.asset("assets/images/reading.png"),
                trailing: CircularPercentIndicator(
                  radius: 22,
                  lineWidth: 22,
                  percent: .7,
                  progressColor: primaryColor,
                  backgroundColor: black.withOpacity(.05),
                ),
              ),
            ),
            verticalSpace(10),
            Container(
              decoration: decoration(white, 12),
              child: ListTile(
                onTap: () {
                  nextScreen(context, IELTSExamScreen());
                },
                title: Text(
                  "Listening",
                  style: bodyText16w500(black),
                ),
                subtitle: Text(
                  "You completed 59%",
                  style: bodyText10w500(black.withOpacity(.5)),
                ),
                leading: Image.asset("assets/images/listening.png"),
                trailing: CircularPercentIndicator(
                  radius: 22,
                  lineWidth: 22,
                  percent: .6,
                  progressColor: Colors.red.shade500,
                  backgroundColor: black.withOpacity(.05),
                ),
              ),
            ),
            verticalSpace(10),
            Container(
              decoration: decoration(white, 12),
              child: ListTile(
                onTap: () {
                  nextScreen(context, IELTSExamScreen());
                },
                title: Text(
                  "Speaking",
                  style: bodyText16w500(black),
                ),
                subtitle: Text(
                  "You completed 32%",
                  style: bodyText10w500(black.withOpacity(.5)),
                ),
                leading: Image.asset("assets/images/speaking.png"),
                trailing: CircularPercentIndicator(
                  radius: 22,
                  lineWidth: 22,
                  percent: .25,
                  progressColor: Colors.blueAccent.shade400,
                  backgroundColor: black.withOpacity(.05),
                ),
              ),
            ),
            verticalSpace(10),
            verticalSpace(10),
            Container(
              decoration: decoration(white, 12),
              child: ListTile(
                onTap: () {
                  nextScreen(context, IELTSExamScreen());
                },
                title: Text(
                  "Grammar",
                  style: bodyText16w500(black),
                ),
                subtitle: Text(
                  "You completed 53%",
                  style: bodyText10w500(black.withOpacity(.5)),
                ),
                leading: Image.asset("assets/images/Grammar.png"),
                trailing: CircularPercentIndicator(
                  radius: 22,
                  lineWidth: 22,
                  percent: .4,
                  progressColor: Colors.purple.shade700,
                  backgroundColor: black.withOpacity(.05),
                ),
              ),
            ),
            verticalSpace(10),
          ],
        ),
      ),
    );
  }
}
