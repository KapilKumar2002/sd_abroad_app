import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class Step_3 extends StatefulWidget {
  const Step_3({super.key});

  @override
  State<Step_3> createState() => _Step_3State();
}

class _Step_3State extends State<Step_3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text.rich(TextSpan(children: [
            TextSpan(
                text:
                    "Your consolidated percentage\n(Combining all subjects/\nsemesters) is ",
                style: bodyText16w500(black)),
            TextSpan(text: "73.40", style: bodyText16w500(primaryColor)),
          ])),
          verticalSpace(20),
          Container(
            decoration: decoration(primaryColor, 21),
            height: 42,
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Calculate GPA",
                  style: bodyText16w500(white),
                ),
                horizontalSpace(7),
                Icon(
                  Icons.arrow_forward_ios,
                  color: white,
                  size: 14,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
