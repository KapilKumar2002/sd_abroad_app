import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/exam/startjourney.dart';
import 'package:sd_abroad_app/views/university/coursefullview.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class ManagementCourses extends StatefulWidget {
  const ManagementCourses({super.key});

  @override
  State<ManagementCourses> createState() => _ManagementCoursesState();
}

class _ManagementCoursesState extends State<ManagementCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: transparent,
          foregroundColor: black,
          elevation: 0,
          title: Text(
            "Management Courses",
            style: bodyText16normal(black),
          )),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          color: background,
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 15,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      nextScreen(context, CourseFullView());
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      decoration: decoration(white, 6),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/mps.png",
                            width: 58,
                            height: 58,
                            fit: BoxFit.fill,
                          ),
                          horizontalSpace(12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "MPS - Management",
                                  style: bodyText12Bold(black),
                                ),
                                verticalSpace(10),
                                Text(
                                  "University of Michigan, United States",
                                  style: bodyText10w500(black.withOpacity(.5)),
                                ),
                                verticalSpace(10),
                                Row(
                                  children: [
                                    Text(
                                      "Fee: ",
                                      style:
                                          bodyText10w500(black.withOpacity(.5)),
                                    ),
                                    Text(
                                      "USD 33500/year",
                                      style: bodyText10w500(black),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2),
                                      child: Text(
                                        "|",
                                        style: bodyText10Bold(grey),
                                      ),
                                    ),
                                    Text(
                                      "Duration: ",
                                      style:
                                          bodyText10w500(black.withOpacity(.5)),
                                    ),
                                    Text(
                                      "3 Year",
                                      style: bodyText10w500(black),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.chevron_right)
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: InkWell(
          onTap: () {
            nextScreen(context, StartJourney());
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Container(
                height: 48,
                width: width(context),
                decoration: decoration(primaryColor, 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Filter",
                      style: bodyText14Bold(white),
                    ),
                    horizontalSpace(8),
                    Image.asset(
                      "assets/images/fil.png",
                      height: 15,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
