import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class TestResult extends StatefulWidget {
  final String testname;
  final int marks;
  final int correct;
  final int incorrect;
  final int skipped;
  const TestResult(
      {super.key,
      required this.testname,
      required this.marks,
      required this.correct,
      required this.incorrect,
      required this.skipped});

  @override
  State<TestResult> createState() => _TestResultState();
}

class _TestResultState extends State<TestResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        backgroundColor: transparent,
        elevation: 0,
        title: Text(
          "Go to Test page",
          style: bodyText16normal(black),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.all(20.0),
          color: background,
          child: Column(
            children: [
              verticalSpace(20),
              Text(
                "${widget.testname}",
                style: bodyText16Bold(black),
              ),
              Image.asset("assets/images/score.png"),
              Container(
                width: 120,
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                decoration:
                    decoration(transparent, 6, borColor: black.withOpacity(.2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your Score: ",
                      style: bodyText12w500(black.withOpacity(.5)),
                    ),
                    Text(
                      "${widget.marks}",
                      style: bodyText12w500(black),
                    ),
                    Text(
                      "/6",
                      style: bodyText12w500(black.withOpacity(.5)),
                    ),
                  ],
                ),
              ),
              verticalSpace(15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration:
                    decoration(transparent, 6, borColor: black.withOpacity(.2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "${widget.correct}",
                          style: bodyText22Bold(green),
                        ),
                        Text(
                          "Correct Answer",
                          style: bodyText10normal(black.withOpacity(.4)),
                        )
                      ],
                    ),
                    Container(
                      width: 1,
                      color: grey,
                      height: 34,
                    ),
                    Column(
                      children: [
                        Text(
                          "${widget.incorrect}",
                          style: bodyText22Bold(Colors.red),
                        ),
                        Text(
                          "Correct Answer",
                          style: bodyText10normal(black.withOpacity(.4)),
                        )
                      ],
                    ),
                    Container(
                      width: 1,
                      color: grey,
                      height: 34,
                    ),
                    Column(
                      children: [
                        Text(
                          "${widget.skipped}",
                          style: bodyText22Bold(black),
                        ),
                        Text(
                          "Correct Answer",
                          style: bodyText10normal(black.withOpacity(.4)),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
