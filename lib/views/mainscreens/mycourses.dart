import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class MyCourses extends StatefulWidget {
  const MyCourses({super.key});

  @override
  State<MyCourses> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: black,
          backgroundColor: transparent,
          elevation: 0,
          title: Text(
            "My Courses",
            style: bodyText24w500(black),
          )),
      body: Container(
        color: background,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(14),
            Text(
              "Applied Courses",
              style: bodyText16w500(black),
            ),
            verticalSpace(15),
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  decoration: decoration(white, 12),
                  margin: EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/abc.png",
                      height: 62,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                    title: Text(
                      "IELTS Eng - 1",
                      style: bodyText16w500(black),
                    ),
                    subtitle: Column(
                      children: [
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text(
                            "80% Complete",
                            style: bodyText8w500(black.withOpacity(.75)),
                          ),
                        ),
                        verticalSpace(5),
                        LinearPercentIndicator(
                          padding: EdgeInsets.zero,
                          lineHeight: 8,
                          progressColor: primaryColor,
                          percent: .8,
                          barRadius: Radius.circular(8),
                          backgroundColor: tabColor,
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
