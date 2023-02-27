import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/university/coursesviewall.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class OverviewUni extends StatefulWidget {
  const OverviewUni({super.key});

  @override
  State<OverviewUni> createState() => _OverviewUniState();
}

class _OverviewUniState extends State<OverviewUni> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 72,
                width: width(context) * .4,
                decoration: decoration(white, 12),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: primaryColor,
                      child: Image.asset(
                        "assets/images/degree.png",
                        height: 26,
                      ),
                    ),
                    horizontalSpace(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "80+",
                          style: bodyText16Bold(black),
                        ),
                        Text(
                          "Courses",
                          style: bodyText12w500(black.withOpacity(.5)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 72,
                width: width(context) * .4,
                decoration: decoration(white, 12),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: primaryColor,
                      child: Image.asset(
                        "assets/images/rank.png",
                        height: 26,
                      ),
                    ),
                    horizontalSpace(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "N/A",
                          style: bodyText16Bold(black),
                        ),
                        Text(
                          "QS Ranking",
                          style: bodyText12w500(black.withOpacity(.5)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          verticalSpace(15),
          Container(
            height: height(context) * .15,
            child: ListView.separated(
              itemCount: 4,
              separatorBuilder: (context, index) {
                return horizontalSpace(12);
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: width(context) * .45,
                  height: height(context) * .15,
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/images/ou.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.center,
                      child: Image.asset(
                        "assets/images/play.png",
                        height: 30,
                      ),
                    ),
                  ]),
                );
              },
            ),
          ),
          verticalSpace(15),
          Container(
            decoration: decoration(white, 12),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "International\nStudents %",
                  style: bodyText14Bold(black),
                ),
                CircularPercentIndicator(
                  radius: 32,
                  percent: .5,
                  lineWidth: 8,
                  progressColor: primaryColor,
                  center: Text(
                    "30%",
                    style: bodyText14Bold(primaryColor),
                  ),
                  backgroundColor: Colors.grey.shade100,
                )
              ],
            ),
          ),
          verticalSpace(35),
          Text(
            "Get in Touch",
            style: bodyText16w500(black),
          ),
          verticalSpace(20),
          Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: primaryColor,
                    child: Image.asset(
                      "assets/images/phone.png",
                      height: 17,
                    ),
                  ),
                  verticalSpace(8),
                  Text(
                    "Phone",
                    style: bodyText10normal(black),
                  )
                ],
              ),
              horizontalSpace(20),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: primaryColor,
                    child: Image.asset(
                      "assets/images/mail.png",
                      height: 17,
                    ),
                  ),
                  verticalSpace(8),
                  Text(
                    "Email",
                    style: bodyText10normal(black),
                  )
                ],
              ),
              horizontalSpace(20),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: primaryColor,
                    child: Image.asset(
                      "assets/images/web.png",
                      height: 17,
                    ),
                  ),
                  verticalSpace(8),
                  Text(
                    "Website",
                    style: bodyText10normal(black),
                  )
                ],
              ),
            ],
          ),
          verticalSpace(15),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/images/map.png",
              height: 410,
              width: width(context),
              fit: BoxFit.cover,
            ),
          ),
          verticalSpace(35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Courses",
                style: bodyText16w500(black),
              ),
              InkWell(
                onTap: () {
                  nextScreen(context, CoursesViewAll());
                },
                child: Text(
                  "View all",
                  style: bodyText14w500(primaryColor),
                ),
              )
            ],
          ),
          verticalSpace(14),
          Container(
            height: 110,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return horizontalSpace(10);
              },
              shrinkWrap: true,
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: width(context) * .8,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: decoration(white, 6),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/cran.png",
                        fit: BoxFit.fill,
                        height: 54,
                        width: 54,
                      ),
                      horizontalSpace(12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "MSc - Applied Bioinformatics",
                              style: bodyText12Bold(black),
                              overflow: TextOverflow.ellipsis,
                            ),
                            verticalSpace(10),
                            Text(
                              "Cranfield University, United Kingdom",
                              style: bodyText10w500(black.withOpacity(.5)),
                            ),
                            verticalSpace(10),
                            Row(
                              children: [
                                Text(
                                  "Fee: ",
                                  style: bodyText10w500(black.withOpacity(.5)),
                                ),
                                Text(
                                  "GBP 21,500/year",
                                  style: bodyText10w500(black),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 2),
                                  child: Text(
                                    "|",
                                    style: bodyText10Bold(grey),
                                  ),
                                ),
                                Text(
                                  "Duration: ",
                                  style: bodyText10w500(black.withOpacity(.5)),
                                ),
                                Text(
                                  "1 Year",
                                  style: bodyText10w500(black),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          verticalSpace(25),
          Text(
            "Similar Universities",
            style: bodyText16w500(black),
          ),
          verticalSpace(15),
          Container(
            height: 120,
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: width(context) * .8,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    decoration: decoration(white, 6),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/usc.png",
                          fit: BoxFit.fill,
                        ),
                        horizontalSpace(12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "University of Southern California",
                                style: bodyText12Bold(black),
                              ),
                              verticalSpace(10),
                              Text(
                                "University of Southern California, Uni...",
                                style: bodyText10w500(black.withOpacity(.5)),
                              ),
                              verticalSpace(10),
                              Text(
                                "Private | Estd. 1880 | 50+ Courses",
                                style: bodyText10w500(black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return horizontalSpace(10);
                },
                itemCount: 4),
          )
        ],
      ),
    );
  }
}
