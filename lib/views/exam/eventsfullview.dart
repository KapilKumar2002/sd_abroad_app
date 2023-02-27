import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/exam/eventregistered.dart';
import 'package:sd_abroad_app/widgets/customdropdown.dart';
import 'package:sd_abroad_app/widgets/customtextfield.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class EventsFullView extends StatefulWidget {
  const EventsFullView({super.key});

  @override
  State<EventsFullView> createState() => _EventsFullViewState();
}

class _EventsFullViewState extends State<EventsFullView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        backgroundColor: transparent,
        elevation: 0,
        title: Text(
          "Football 2023",
          style: bodyText16normal(black),
        ),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: background,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(20),
                  Text(
                    "College FootBall 2023 Event",
                    style: bodyText16Bold(black),
                  ),
                  Text(
                    "13th January 2023",
                    style: bodyText12w500(black.withOpacity(.5)),
                  ),
                  verticalSpace(25),
                  Text(
                    "Line Up",
                    style: bodyText16Bold(black),
                  ),
                  verticalSpace(10),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/line1.png",
                              height: 74,
                              width: 74,
                              fit: BoxFit.fill,
                            ),
                            verticalSpace(2),
                            Text(
                              "Neymar",
                              style: bodyText10w500(black),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/line1.png",
                              height: 74,
                              width: 74,
                              fit: BoxFit.fill,
                            ),
                            verticalSpace(2),
                            Text(
                              "Neymar",
                              style: bodyText10w500(black),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/line1.png",
                              height: 74,
                              width: 74,
                              fit: BoxFit.fill,
                            ),
                            verticalSpace(2),
                            Text(
                              "Neymar",
                              style: bodyText10w500(black),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(20),
                  Text(
                    "Register for event",
                    style: bodyText16Bold(black),
                  ),
                  verticalSpace(15),
                  CustomTextField(hint: "Full name"),
                  verticalSpace(10),
                  Row(
                    children: [
                      CustomDropDown(
                        dropdownColor: white,
                        list: [],
                        height: 44,
                        hint: "",
                        width: 60,
                        iconSize: 12,
                        radius: 6,
                        iconColor: black.withOpacity(.4),
                        hp: 2,
                      ),
                      Expanded(
                          child: CustomTextField(
                        hint: "",
                        prefix: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "+91",
                            style: bodyText14w500(black.withOpacity(.4)),
                          ),
                        ),
                      ))
                    ],
                  ),
                  verticalSpace(10),
                  CustomTextField(hint: "Email address"),
                ],
              ),
              InkWell(
                onTap: () {
                  nextScreen(context, EventRegistered());
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
                          "Register",
                          style: bodyText14Bold(white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
