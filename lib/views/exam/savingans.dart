import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/exam/greatjob.dart';

class SavingAnswer extends StatefulWidget {
  const SavingAnswer({super.key});

  @override
  State<SavingAnswer> createState() => _SavingAnswerState();
}

class _SavingAnswerState extends State<SavingAnswer> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 4), () => GreatJob());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width(context),
        color: background,
        child: Column(children: [
          verticalSpace(width(context) * .25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: tabColor,
                child: Icon(
                  Icons.check,
                  color: primaryColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 1,
                  width: 25,
                  color: grey,
                ),
              ),
              CircleAvatar(
                backgroundColor: primaryColor,
                child: Text(
                  "2",
                  style: bodyText16Bold(white),
                ),
              )
            ],
          ),
          verticalSpace(width(context) * .5),
          Text(
            "Saving your answer",
            style: bodyText16Bold(black),
          ),
          verticalSpace(40),
          CircularPercentIndicator(
            radius: 35,
            percent: .50,
            startAngle: 25,
            animationDuration: 2,
            lineWidth: 6,
            progressColor: primaryColor,
            circularStrokeCap: CircularStrokeCap.round,
            backgroundColor: black.withOpacity(.08),
          )
        ]),
      ),
    );
  }
}
