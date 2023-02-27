import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class Reminders extends StatefulWidget {
  const Reminders({super.key});

  @override
  State<Reminders> createState() => _RemindersState();
}

class _RemindersState extends State<Reminders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: black,
          backgroundColor: transparent,
          elevation: 0,
          title: Text(
            "Reminders",
            style: bodyText16normal(black),
          )),
      body: Container(
        color: background,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          children: [
            ListView.separated(
              separatorBuilder: (context, index) {
                return horizontalSpace(10);
              },
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: decoration(white, 6),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/manche.png",
                        fit: BoxFit.fill,
                        height: 54,
                        width: 54,
                      ),
                      horizontalSpace(12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The University of Manchester",
                              style: bodyText12Bold(black),
                              overflow: TextOverflow.ellipsis,
                            ),
                            verticalSpace(10),
                            Text(
                              "Manchester, United Kingdom",
                              style: bodyText10w500(black.withOpacity(.5)),
                            ),
                            verticalSpace(10),
                            Text(
                              "Public | Estd. 1824 | 850 Courses ",
                              style: bodyText10w500(black),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.notifications_active,
                        color: primaryColor,
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
