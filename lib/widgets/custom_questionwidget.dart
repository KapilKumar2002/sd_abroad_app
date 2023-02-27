import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/widgets/customtextfield.dart';

class CustomQuestionWidget extends StatelessWidget {
  final String? preText;
  final String? q_no;
  final String? postText;
  final String? boText;
  const CustomQuestionWidget(
      {super.key, this.preText, this.q_no, this.postText, this.boText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            preText != null
                ? Text(
                    "${preText} ",
                    style: bodyText14normal(black),
                  )
                : horizontalSpace(0),
            q_no != null
                ? Text(
                    "${q_no}.",
                    style: bodyText14Bold(black),
                  )
                : horizontalSpace(0),
            horizontalSpace(5),
            Expanded(
              child: CustomTextField(
                fillColor: transparent,
                borColor: black,
                height: 30,
              ),
            ),
            horizontalSpace(10),
            postText != null
                ? Text(
                    "${postText}",
                    style: bodyText14normal(
                      black,
                    ),
                  )
                : horizontalSpace(0),
          ],
        ),
        verticalSpace(4),
        boText != null
            ? Text(
                "${boText}",
                style: bodyText14normal(black),
              )
            : horizontalSpace(0),
      ],
    );
  }
}
