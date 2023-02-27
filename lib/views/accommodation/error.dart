import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/error.png"),
        Text(
          "Ups!... no results found",
          style: bodyText16Bold(black),
        ),
        verticalSpace(10),
        Text(
          "Please try another search",
          style: bodyText12w500(black.withOpacity(.4)),
        ),
      ],
    );
  }
}
