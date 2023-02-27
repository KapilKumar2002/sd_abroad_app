import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class Step_4 extends StatefulWidget {
  const Step_4({super.key});

  @override
  State<Step_4> createState() => _Step_4State();
}

class _Step_4State extends State<Step_4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Calculation:",
            style: bodyText20wBold(black),
          ),
          verticalSpace(20),
          Container(
            height: 250,
            decoration:
                decoration(transparent, 12, borColor: grey.withOpacity(.8)),
            width: width(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  radius: 82,
                  progressColor: primaryColor,
                  percent: .75,
                  circularStrokeCap: CircularStrokeCap.round,
                  startAngle: 180,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "8.9",
                        style: bodyText38w500(black),
                      ),
                      verticalSpace(10),
                      Text(
                        "GPA Score",
                        style: bodyText14w500(black),
                      )
                    ],
                  ),
                  lineWidth: 10,
                  backgroundColor: black.withOpacity(.05),
                ),
                verticalSpace(20),
                Text(
                  "How GPA Score Calculated",
                  style: bodyText12w500(primaryColor,
                      decoration: TextDecoration.underline),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
