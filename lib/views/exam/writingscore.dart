import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class WritingScore extends StatefulWidget {
  const WritingScore({super.key});

  @override
  State<WritingScore> createState() => _WritingScoreState();
}

class _WritingScoreState extends State<WritingScore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: transparent,
          foregroundColor: black,
          elevation: 0,
          title: Text(
            "Go to Test page",
            style: bodyText16normal(black),
          )),
      body: Container(
        color: background,
        width: width(context),
        child: Column(
          children: [
            verticalSpace(20),
            Text(
              "Writing score",
              style: bodyText14Bold(black),
            ),
            Image.asset("assets/images/writing_score.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your score: ",
                  style: bodyText12w500(black.withOpacity(.4)),
                ),
                Text(
                  "4",
                  style: bodyText12w500(black),
                ),
                Text(
                  "/6",
                  style: bodyText12w500(black.withOpacity(.4)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
