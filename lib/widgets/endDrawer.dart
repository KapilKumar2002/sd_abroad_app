import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class EndDrawerWidget extends StatefulWidget {
  const EndDrawerWidget({super.key});

  @override
  State<EndDrawerWidget> createState() => _EndDrawerWidgetState();
}

class _EndDrawerWidgetState extends State<EndDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context) * .5,
      color: white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(40),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/filter.png",
                    height: 20,
                  ),
                  horizontalSpace(10),
                  Text(
                    "Filters",
                    style: bodyText18Bold(primaryColor),
                  )
                ],
              ),
            ),
            verticalSpace(15),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Intake",
                style: bodyText14w500(black),
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 6,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Text(
                      "May 2023",
                      style: bodyText12w500(black),
                    ),
                  ],
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Fees",
                style: bodyText14w500(black),
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 5,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Text(
                      "Upto 2023",
                      style: bodyText12w500(black),
                    ),
                  ],
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Duration",
                style: bodyText14w500(black),
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Text(
                      "< 6 Months",
                      style: bodyText12w500(black),
                    ),
                  ],
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Degree",
                style: bodyText14w500(black),
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Text(
                      "Bachelors",
                      style: bodyText12w500(black),
                    ),
                  ],
                );
              },
            ),
            verticalSpace(50)
          ],
        ),
      ),
    );
  }
}
