import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/exam/testsubmit.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class TimeToPrepareScreen extends StatelessWidget {
  const TimeToPrepareScreen({super.key});

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
              CircularPercentIndicator(
                radius: 100,
                lineWidth: 15,
                startAngle: 20,
                backgroundColor: black.withOpacity(.08),
                progressColor: primaryColor,
                percent: .34,
                circularStrokeCap: CircularStrokeCap.round,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Time to prepare",
                      style: bodyText16w500(black.withOpacity(.5)),
                    ),
                    Text(
                      "00:24",
                      style: bodyText34Bold(black.withOpacity(.5)),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  nextScreen(context, TestSubmit());
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 48,
                  width: width(context),
                  decoration: decoration(primaryColor, 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Start Speaking",
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
            ],
          )),
    );
  }
}
