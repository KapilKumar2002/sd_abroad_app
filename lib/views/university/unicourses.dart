import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class UniCourses extends StatefulWidget {
  const UniCourses({super.key});

  @override
  State<UniCourses> createState() => _UniCoursesState();
}

class _UniCoursesState extends State<UniCourses> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Column(
              children: [
                ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          decoration: decoration(white, 6),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/manche.png",
                                width: 48,
                                height: 58,
                                fit: BoxFit.fill,
                              ),
                              horizontalSpace(12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "BSc Physics",
                                      style: bodyText12Bold(black),
                                    ),
                                    verticalSpace(10),
                                    Text(
                                      "Imperial College London, United Kingdom",
                                      style:
                                          bodyText10w500(black.withOpacity(.5)),
                                    ),
                                    verticalSpace(10),
                                    Row(
                                      children: [
                                        Text(
                                          "Fee: ",
                                          style: bodyText10w500(
                                              black.withOpacity(.5)),
                                        ),
                                        Text(
                                          "GBP33500/year",
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
                                          style: bodyText10w500(
                                              black.withOpacity(.5)),
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
                      ],
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
