import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/university/coursefullview.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class Full_Course_Overview extends StatefulWidget {
  const Full_Course_Overview({super.key});

  @override
  State<Full_Course_Overview> createState() => _Full_Course_OverviewState();
}

class _Full_Course_OverviewState extends State<Full_Course_Overview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: decoration(white, 12),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tution Fees",
                      style: bodyText12normal(black.withOpacity(.5)),
                    ),
                    Text(
                      "USD 58,586 / Year",
                      style: bodyText12w500(black),
                    )
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tution Fees",
                      style: bodyText12normal(black.withOpacity(.5)),
                    ),
                    Text(
                      "1 Year",
                      style: bodyText12w500(black),
                    )
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tution Fees",
                      style: bodyText12normal(black.withOpacity(.5)),
                    ),
                    Text(
                      "7",
                      style: bodyText12w500(black),
                    )
                  ],
                ),
              ],
            ),
          ),
          verticalSpace(25),
          Text(
            "Similar Courses",
            style: bodyText16w500(black),
          ),
          verticalSpace(10),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  nextScreen(context, CourseFullView());
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: decoration(white, 6),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/mps.png",
                        width: 58,
                        height: 58,
                        fit: BoxFit.fill,
                      ),
                      horizontalSpace(12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "MPS - Management",
                              style: bodyText12Bold(black),
                            ),
                            verticalSpace(10),
                            Text(
                              "University of Michigan, United States",
                              style: bodyText10w500(black.withOpacity(.5)),
                            ),
                            verticalSpace(10),
                            Row(
                              children: [
                                Text(
                                  "Fee: ",
                                  style: bodyText10w500(black.withOpacity(.5)),
                                ),
                                Text(
                                  "USD 33500/year",
                                  style: bodyText10w500(black),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 2),
                                  child: Text(
                                    "|",
                                    style: bodyText10Bold(grey),
                                  ),
                                ),
                                Text(
                                  "Duration: ",
                                  style: bodyText10w500(black.withOpacity(.5)),
                                ),
                                Text(
                                  "3 Year",
                                  style: bodyText10w500(black),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
