import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/accommodation/result.dart';
import 'package:sd_abroad_app/views/destination/destination.dart';
import 'package:sd_abroad_app/views/exam/ielts.dart';
import 'package:sd_abroad_app/views/exam/referandearn.dart';
import 'package:sd_abroad_app/views/mainscreens/educationgui.dart';
import 'package:sd_abroad_app/views/mainscreens/myuniversity.dart';
import 'package:sd_abroad_app/views/mainscreens/test_prep.dart';
import 'package:sd_abroad_app/views/university/coursesviewall.dart';
import 'package:sd_abroad_app/views/university/university.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

import '../exam/languagecourse.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageController = PageController();
  int index = 0;
  List event = [
    "assets/images/cuevent.png",
    "assets/images/cuevent.png",
    "assets/images/cuevent.png",
    "assets/images/cuevent.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: background,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Destinations",
                  style: bodyText14w500(black),
                ),
                verticalSpace(10),
                Container(
                  height: 114,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            nextScreen(context, DestinationOverviewScreen());
                          },
                          child: Container(
                            height: 114,
                            width: width(context) * 0.27,
                            decoration: decoration(white, 10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 12),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/ukflag.png",
                                  height: 48,
                                  width: 64,
                                  fit: BoxFit.fill,
                                ),
                                verticalSpace(8),
                                Text(
                                  "UK",
                                  style: bodyText10w500(black),
                                ),
                                verticalSpace(4),
                                Text(
                                  "230+ Universities",
                                  style: bodyText8w500(primaryColor),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return horizontalSpace(10);
                      },
                      itemCount: 5),
                ),
                verticalSpace(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Universities",
                      style: bodyText14w500(black),
                    ),
                    InkWell(
                      onTap: () {
                        nextScreen(context, MyUniversity());
                      },
                      child: Text(
                        "View all",
                        style: bodyText10w400(primaryColor),
                      ),
                    ),
                  ],
                ),
                verticalSpace(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        nextScreen(context, UniversityScreen());
                      },
                      child: Container(
                        width: 100,
                        decoration: decoration(white, 10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/quest.png",
                              height: 40,
                              width: 40,
                              fit: BoxFit.fill,
                            ),
                            verticalSpace(8),
                            Text(
                              "Quest University",
                              style: bodyText10w500(black),
                              textAlign: TextAlign.center,
                            ),
                            verticalSpace(4),
                            Text(
                              "230+ Universities",
                              style: bodyText8w500(primaryColor),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        nextScreen(context, UniversityScreen());
                      },
                      child: Container(
                        width: 100,
                        decoration: decoration(white, 10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/quest.png",
                              height: 40,
                              width: 40,
                              fit: BoxFit.fill,
                            ),
                            verticalSpace(8),
                            Text(
                              "Quest University",
                              style: bodyText10w500(black),
                              textAlign: TextAlign.center,
                            ),
                            verticalSpace(4),
                            Text(
                              "230+ Universities",
                              style: bodyText8w500(primaryColor),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        nextScreen(context, UniversityScreen());
                      },
                      child: Container(
                        width: 100,
                        decoration: decoration(white, 10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/quest.png",
                              height: 40,
                              width: 40,
                              fit: BoxFit.fill,
                            ),
                            verticalSpace(8),
                            Text(
                              "Quest University",
                              style: bodyText10w500(black),
                              textAlign: TextAlign.center,
                            ),
                            verticalSpace(4),
                            Text(
                              "230+ Universities",
                              style: bodyText8w500(primaryColor),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpace(10),
                Text(
                  "Accomodations",
                  style: bodyText14w500(black),
                ),
                verticalSpace(10),
                Container(
                  height: 110,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            nextScreen(context, AccommodationResult());
                          },
                          child: Container(
                            width: 142,
                            decoration: decoration(white, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/unite.png",
                                  height: 63,
                                  width: 142,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "United Kingdom",
                                        style: bodyText10w500(black),
                                      ),
                                      verticalSpace(4),
                                      Text(
                                        "900+ Properties",
                                        style: bodyText8w500(primaryColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return horizontalSpace(10);
                      },
                      itemCount: 5),
                ),
                verticalSpace(10),
                Row(
                  children: [
                    Text(
                      "Courses & Language Courses ",
                      style: bodyText14w500(black),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {
                          nextScreen(context, CoursesViewAll());
                        },
                        child: Text('View All'))
                  ],
                ),
                verticalSpace(10),
                Container(
                  height: 110,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            nextScreen(context, const LanguageCourses());
                          },
                          child: Container(
                            decoration: decoration(white, 10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/manag.png",
                                  height: 75,
                                  width: 80,
                                  fit: BoxFit.fill,
                                ),
                                Text(
                                  "Management",
                                  style: bodyText10w500(black),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return horizontalSpace(10);
                      },
                      itemCount: 5),
                ),
                verticalSpace(10),
                Row(
                  children: [
                    Text(
                      "Exam Preparation",
                      style: bodyText14w500(black),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {
                          nextScreen(context, TestPrep());
                        },
                        child: Text('View All'))
                  ],
                ),
                verticalSpace(10),
                Container(
                  height: 110,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            nextScreen(context, const IELTSExamScreen());
                          },
                          child: Container(
                            decoration: decoration(white, 10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/manag.png",
                                  height: 75,
                                  width: 80,
                                  fit: BoxFit.fill,
                                ),
                                Text(
                                  "TOEFL",
                                  style: bodyText10w500(black),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return horizontalSpace(10);
                      },
                      itemCount: 5),
                ),
                verticalSpace(35),
                Container(
                  width: width(context),
                  decoration: decoration(white, 12),
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpace(14),
                      Text(
                        "Timeline",
                        style: bodyText16w500(black),
                      ),
                      Text(
                        "This timeline help you figure out your expected\n journey with SD Abroad",
                        style: bodyText10w500(primaryColor),
                      ),
                      verticalSpace(15),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 9,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 14),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 14),
                                  child: Icon(
                                    Icons.circle,
                                    color: primaryColor,
                                    size: 14,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: width(context),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 14),
                                    decoration: decoration(background, 7),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Today",
                                          style: bodyText10w500(black),
                                        ),
                                        verticalSpace(4),
                                        Text(
                                          "Book your counselling session",
                                          style: bodyText8w500(
                                              primaryColor.withOpacity(.7)),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
                verticalSpace(20),
                Text(
                  "Testimonials",
                  style: bodyText14w500(black),
                ),
                verticalSpace(14),
                Container(
                  height: 360,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          width: width(context) * .725,
                          decoration: decoration(primaryColor, 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/invertcomma.png",
                                height: 26,
                              ),
                              verticalSpace(12),
                              Padding(
                                padding: const EdgeInsets.only(right: 25),
                                child: Text(
                                  '"FLY team provided me with complete support in intemational fees remittance. My Financial Expert solved all my queries before initiating the payment and guided me through the entire process."',
                                  style: bodyText14normal(white, height: 2),
                                ),
                              ),
                              verticalSpace(11),
                              Divider(
                                color: white,
                                thickness: 2,
                              ),
                              verticalSpace(5),
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: CircleAvatar(
                                    radius: 32,
                                    backgroundImage:
                                        AssetImage("assets/images/rakesh.png")),
                                title: Text(
                                  "Sagnlk Acharya",
                                  style: bodyText16Bold(white),
                                ),
                                subtitle: Text(
                                  "University Of Westminster",
                                  style: bodyText12w500(white),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return horizontalSpace(15);
                      },
                      itemCount: 4),
                ),
                verticalSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Abroad Education Guidance",
                      style: bodyText14w500(black),
                    ),
                    InkWell(
                      onTap: () {
                        nextScreen(context, EducationGuidance());
                      },
                      child: Text(
                        "View all",
                        style: bodyText14w500(primaryColor),
                      ),
                    )
                  ],
                ),
                verticalSpace(10),
                Container(
                  height: 120,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            nextScreen(context, EducationGuidance());
                          },
                          child: Container(
                              height: 118,
                              width: 180,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                        "assets/images/ou.png",
                                        height: 118,
                                        width: 180,
                                        fit: BoxFit.fill,
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional.center,
                                        child: Image.asset(
                                          "assets/images/play.png",
                                          height: 36,
                                        ),
                                      )
                                    ],
                                  ))),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return horizontalSpace(14);
                      },
                      itemCount: 4),
                ),
                verticalSpace(15),
                Row(
                  children: [
                    Text(
                      "Upcoming event in ",
                      style: bodyText14w400(black),
                    ),
                    Text(
                      "18h 34m 25s",
                      style: bodyText14w500(black),
                    ),
                  ],
                ),
                verticalSpace(12),
                Container(
                  height: 180,
                  child: Stack(children: [
                    Center(
                      child: Container(
                        height: 180,
                        width: width(context) - 60,
                        child: PageView.builder(
                          reverse: true,
                          itemCount: event.length,
                          onPageChanged: (value) {
                            setState(() {
                              index = value;
                            });
                          },
                          controller: pageController,
                          itemBuilder: (context, i) {
                            return Container(
                              child: Image.asset(event[index]),
                            );
                          },
                        ),
                      ),
                    ),
                    index == event.length - 1
                        ? Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: InkWell(
                              onTap: () {
                                if (index > 0 && index <= event.length - 1) {
                                  setState(() {
                                    index = index - 1;
                                  });
                                } else if (index == 0) {
                                  setState(() {
                                    index = event.length - 1;
                                  });
                                }
                              },
                              child: CircleAvatar(
                                backgroundColor: black.withOpacity(.35),
                                child: Text(
                                  "<",
                                  style: bodyText24w300(white),
                                ),
                              ),
                            ),
                          )
                        : horizontalSpace(0),
                    index < event.length - 1
                        ? Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: InkWell(
                              onTap: () {
                                if (index >= 0 && index < event.length - 1) {
                                  setState(() {
                                    index = index + 1;
                                    print(index);
                                  });
                                }
                              },
                              child: CircleAvatar(
                                backgroundColor: black.withOpacity(.35),
                                child: Text(
                                  ">",
                                  style: bodyText24w300(white),
                                ),
                              ),
                            ),
                          )
                        : horizontalSpace(0),
                  ]),
                ),
                verticalSpace(12),
                InkWell(
                  onTap: () {
                    nextScreen(context, ReferAndEarn());
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "assets/images/eere.png",
                      height: 175,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
