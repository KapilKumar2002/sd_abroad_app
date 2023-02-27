import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/exam/savingans.dart';
import 'package:sd_abroad_app/views/exam/timetoprepare.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class TestSubmit extends StatefulWidget {
  const TestSubmit({super.key});

  @override
  State<TestSubmit> createState() => _TestSubmitState();
}

class _TestSubmitState extends State<TestSubmit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: background,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  verticalSpace(40),
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Icon(
                      Icons.close,
                      color: black.withOpacity(.4),
                    ),
                  ),
                  verticalSpace(25),
                  Text(
                    "Question 1",
                    style: bodyText14normal(black.withOpacity(.5)),
                  ),
                  verticalSpace(10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Did you have many friends when you were a child?",
                      style: bodyText16Bold(black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "0:15 ",
                          style: bodyText32Bold(black),
                        ),
                        Text(
                          " / 0:30",
                          style: bodyText32Bold(black.withOpacity(.5)),
                        )
                      ],
                    ),
                    verticalSpace(30),
                    Image.asset(
                      "assets/images/volu.png",
                      width: 75,
                    ),
                    verticalSpace(50),
                    Text(
                      "Try speaking for entire 30 sec\nto get a better score",
                      style:
                          bodyText10normal(black.withOpacity(.5), height: 1.5),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: InkWell(
                  onTap: () {
                    nextScreen(context, SavingAnswer());
                  },
                  child: Container(
                    height: 48,
                    width: width(context),
                    decoration: decoration(primaryColor, 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Submit Speaking",
                          style: bodyText14Bold(white),
                        ),
                        horizontalSpace(5),
                        Icon(
                          Icons.mic_none_outlined,
                          color: white,
                        )
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
