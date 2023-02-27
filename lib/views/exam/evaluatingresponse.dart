import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/exam/greatjob.dart';
import 'package:sd_abroad_app/views/exam/testresult.dart';

class EvaluatingResponse extends StatefulWidget {
  const EvaluatingResponse({super.key});

  @override
  State<EvaluatingResponse> createState() => _EvaluatingResponseState();
}

class _EvaluatingResponseState extends State<EvaluatingResponse> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
        Duration(seconds: 4),
        () => TestResult(
              marks: 3,
              correct: 3,
              incorrect: 3,
              skipped: 0,
              testname: "Speaking score",
            ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width(context),
        color: background,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Evaluating your response...",
            style: bodyText16Bold(black),
          ),
          verticalSpace(40),
          Image.asset("assets/images/eva.png")
        ]),
      ),
    );
  }
}
