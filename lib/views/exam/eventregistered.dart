import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class EventRegistered extends StatefulWidget {
  const EventRegistered({super.key});

  @override
  State<EventRegistered> createState() => _EventRegisteredState();
}

class _EventRegisteredState extends State<EventRegistered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width(context),
        color: background,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
            "Congratulations",
            style: bodyText16Bold(black),
          ),
          verticalSpace(10),
          Text(
            "Successfully registered for the event",
            style: bodyText14w500(black.withOpacity(.4)),
          )
        ]),
      ),
    );
  }
}
