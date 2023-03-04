import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/exam/languagecourse.dart';
import 'package:sd_abroad_app/views/university/managementcourses.dart';
import 'package:sd_abroad_app/widgets/customdropdown.dart';
import 'package:sd_abroad_app/widgets/customtextfield.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class StartJourney extends StatefulWidget {
  const StartJourney({super.key});

  @override
  State<StartJourney> createState() => _StartJourneyState();
}

class _StartJourneyState extends State<StartJourney> {
  List item = [
    "lorem",
    "lorem",
    "lorem",
    "lorem",
    "lorem",
    "lorem",
  ];
  double currentSliderValue = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        backgroundColor: transparent,
        elevation: 0,
        title: Text(
          "Start Your Study Aboroad Journey",
          style: bodyText16normal(black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: background,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Country Preference",
                  style: bodyText16Bold(black),
                ),
              ),
              verticalSpace(12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    horizontalSpace(20),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 77,
                      width: 74,
                      decoration: decoration(white, 12),
                      child: Column(children: [
                        Image.asset(
                          "assets/images/ukflag.png",
                          height: 33,
                          width: 44,
                          fit: BoxFit.fill,
                        ),
                        verticalSpace(7),
                        Text(
                          "UK",
                          style: bodyText12w500(black.withOpacity(.5)),
                        )
                      ]),
                    ),
                    horizontalSpace(14),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 77,
                      width: 74,
                      decoration: decoration(white, 12),
                      child: Column(children: [
                        Image.asset(
                          "assets/images/canada.png",
                          height: 33,
                          width: 44,
                          fit: BoxFit.fill,
                        ),
                        verticalSpace(7),
                        Text(
                          "UK",
                          style: bodyText12w500(black.withOpacity(.5)),
                        )
                      ]),
                    ),
                    horizontalSpace(14),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 77,
                      width: 74,
                      decoration: decoration(white, 12),
                      child: Column(children: [
                        Image.asset(
                          "assets/images/usa.png",
                          height: 33,
                          width: 44,
                          fit: BoxFit.fill,
                        ),
                        verticalSpace(7),
                        Text(
                          "UK",
                          style: bodyText12w500(black.withOpacity(.5)),
                        )
                      ]),
                    ),
                    horizontalSpace(14),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 77,
                      width: 74,
                      decoration: decoration(white, 12),
                      child: Column(children: [
                        Image.asset(
                          "assets/images/ukflag.png",
                          height: 33,
                          width: 44,
                          fit: BoxFit.fill,
                        ),
                        verticalSpace(7),
                        Text(
                          "UK",
                          style: bodyText12w500(black.withOpacity(.5)),
                        )
                      ]),
                    ),
                    horizontalSpace(20)
                  ],
                ),
              ),
              verticalSpace(20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Intake Preference",
                  style: bodyText16Bold(black),
                ),
              ),
              verticalSpace(12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 20,
                      childAspectRatio: width(context) * .3 / 44),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 44,
                      decoration: decoration(white, 6),
                      child: Center(
                        child: Text(
                          "May 2023",
                          style: bodyText12w500(black.withOpacity(.5)),
                        ),
                      ),
                    );
                  },
                ),
              ),
              verticalSpace(25),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Budget Preference",
                  style: bodyText16Bold(black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      activeTrackColor: primaryColor,
                      thumbColor: primaryColor,
                      inactiveTrackColor: white,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 12),
                      trackHeight: 3),
                  child: Slider(
                    value: currentSliderValue,
                    min: 5,
                    max: 50,
                    onChanged: (double newValue) {
                      setState(() {
                        currentSliderValue = newValue;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${currentSliderValue.toInt()}L",
                          style: bodyText12normal(black),
                        ),
                        Text(
                          "50L+",
                          style: bodyText12normal(black),
                        )
                      ],
                    ),
                    verticalSpace(30),
                    Text(
                      "Degree Preference",
                      style: bodyText16Bold(black),
                    ),
                    verticalSpace(12),
                    CustomDropDown(
                      list: item,
                      height: 44,
                      hint: "Select",
                      dropdownColor: white,
                      radius: 6,
                      textStyle: bodyText12w500(black.withOpacity(.5)),
                      iconSize: 12,
                      iconColor: black.withOpacity(.5),
                    ),
                    verticalSpace(20),
                    Text(
                      "Subject Preference",
                      style: bodyText16Bold(black),
                    ),
                    verticalSpace(12),
                    CustomTextField(hint: "Search your preferred subject"),
                  ],
                ),
              ),
              verticalSpace(10),
              Container(
                height: 96,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 96,
                        width: 88,
                        decoration: decoration(white, 12),
                        child: Column(
                          children: [
                            verticalSpace(12),
                            Image.asset(
                              "assets/images/mana.png",
                              height: 44,
                            ),
                            verticalSpace(12),
                            Text(
                              "Management",
                              style: bodyText10w500(black),
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: 4),
              ),
              verticalSpace(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Highest Qualification",
                      style: bodyText16Bold(black),
                    ),
                    verticalSpace(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: decoration(white, 6),
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            child: Text(
                              "12th",
                              style: bodyText12w500(black.withOpacity(.5)),
                            )),
                        Container(
                            decoration: decoration(white, 6),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              "Bachelors",
                              style: bodyText12w500(black.withOpacity(.5)),
                            )),
                        Container(
                            decoration: decoration(white, 6),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              "Masters",
                              style: bodyText12w500(black.withOpacity(.5)),
                            )),
                      ],
                    ),
                    verticalSpace(15),
                    CustomTextField(hint: "Enter Gained Or Expected %"),
                    verticalSpace(20),
                    Text(
                      "English Language Test",
                      style: bodyText16Bold(black),
                    ),
                    verticalSpace(10),
                    CustomDropDown(
                      list: item,
                      height: 44,
                      hint: "Select",
                      dropdownColor: white,
                      radius: 6,
                      textStyle: bodyText12w500(black.withOpacity(.5)),
                      iconSize: 12,
                      iconColor: black.withOpacity(.5),
                    ),
                    verticalSpace(20),
                    Text(
                      "Academic Test",
                      style: bodyText16Bold(black),
                    ),
                    verticalSpace(10),
                    CustomDropDown(
                      list: item,
                      height: 44,
                      hint: "Select",
                      dropdownColor: white,
                      radius: 6,
                      textStyle: bodyText12w500(black.withOpacity(.5)),
                      iconSize: 12,
                      iconColor: black.withOpacity(.5),
                    ),
                    verticalSpace(20),
                    Text(
                      "Need Help With?",
                      style: bodyText16Bold(black),
                    ),
                    verticalSpace(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: decoration(white, 6),
                          width: width(context) * .25,
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          child: Column(
                            children: [
                              Text(
                                "Study Abroad",
                                style: bodyText10w500(black.withOpacity(.5)),
                              ),
                              Text(
                                "UK, Canada, US & More",
                                style: bodyText8normal(black.withOpacity(.5)),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: decoration(white, 6),
                          width: width(context) * .25,
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          child: Column(
                            children: [
                              Text(
                                "Test Prep",
                                style: bodyText10w500(black.withOpacity(.5)),
                              ),
                              Text(
                                "IELTS, GRE, GMAT & More",
                                style: bodyText8normal(black.withOpacity(.5)),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: decoration(white, 6),
                          width: width(context) * .25,
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          child: Column(
                            children: [
                              Text(
                                "Finances",
                                style: bodyText10w500(black.withOpacity(.5)),
                              ),
                              Text(
                                "Scholarship, Loans & Forex",
                                style: bodyText8normal(black.withOpacity(.5)),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(30),
                    InkWell(
                      onTap: () {
                        nextScreen(context, ManagementCourses());
                      },
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
                                "View Shortlist",
                                style: bodyText14Bold(white),
                              ),
                              horizontalSpace(10),
                              Icon(
                                Icons.arrow_forward,
                                color: white,
                                size: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
