import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class UniversityAdmission extends StatefulWidget {
  const UniversityAdmission({super.key});

  @override
  State<UniversityAdmission> createState() => _UniversityAdmissionState();
}

class _UniversityAdmissionState extends State<UniversityAdmission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: black,
          backgroundColor: transparent,
          elevation: 0,
          title: Text(
            "University Admission",
            style: bodyText24w500(black),
          )),
      body: Container(
        color: background,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/stan.png",
                    height: 82,
                    width: 82,
                  ),
                  horizontalSpace(15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Stanford University",
                        style: bodyText22Bold(black),
                      ),
                      verticalSpace(5),
                      Text(
                        "London",
                        style: bodyText14w500(primaryColor.withOpacity(.75)),
                      ),
                    ],
                  ),
                ],
              ),
              verticalSpace(15),
              Text(
                "Course Applied : Masters of IT",
                style: bodyText18w500(black),
              ),
              verticalSpace(14),
              Text(
                "Chances of Getting in",
                style: bodyText14w500(black),
              ),
              verticalSpace(10),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  "80% Complete",
                  style: bodyText8w500(black.withOpacity(.7)),
                ),
              ),
              verticalSpace(6),
              LinearPercentIndicator(
                padding: EdgeInsets.zero,
                progressColor: primaryColor,
                backgroundColor: tabColor,
                barRadius: Radius.circular(35),
                lineHeight: 8,
                percent: .8,
              )
            ],
          ),
        ),
      ),
    );
  }
}
