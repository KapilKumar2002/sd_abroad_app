import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/exam/evaluatingresponse.dart';

class GreatJob extends StatefulWidget {
  const GreatJob({super.key});

  @override
  State<GreatJob> createState() => _GreatJobState();
}

class _GreatJobState extends State<GreatJob> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 4), () => EvaluatingResponse());
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
                backgroundColor: tabColor,
                child: Icon(
                  Icons.check,
                  color: primaryColor,
                ),
              )
            ],
          ),
          verticalSpace(width(context) * .5),
          CircleAvatar(
            radius: 47,
            backgroundColor: green.withOpacity(.75),
            child: Icon(
              Icons.check,
              size: 50,
              color: white,
            ),
          ),
          verticalSpace(40),
          Text(
            "Great job!",
            style: bodyText14w500(black.withOpacity(.4)),
          )
        ]),
      ),
    );
  }
}
