import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/exam/ielts.dart';
import 'package:sd_abroad_app/views/exam/listen_exam.dart';
import 'package:sd_abroad_app/views/exam/read_exam.dart';
import 'package:sd_abroad_app/views/exam/timetoprepare.dart';
import 'package:sd_abroad_app/views/exam/write_exam.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class Exam_Overview extends StatefulWidget {
  const Exam_Overview({super.key});

  @override
  State<Exam_Overview> createState() => _Exam_OverviewState();
}

class _Exam_OverviewState extends State<Exam_Overview> {
  List list = [
    {
      "image": "assets/images/esp.png",
      "title": "IELTS Speaking Test",
      "time": "5",
      "screen": TimeToPrepareScreen()
    },
    {
      "image": "assets/images/eli.png",
      "title": "IELTS Listening Test",
      "time": "7",
      "screen": ListenExam()
    },
    {
      "image": "assets/images/ere.png",
      "title": "IELTS Reading Test",
      "time": "10",
      "screen": ReadExam()
    },
    {
      "image": "assets/images/ew.png",
      "title": "IELTS Writing Test",
      "time": "10",
      "screen": WriteExam()
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Upcoming Live Classes",
              style: bodyText16Bold(black),
            ),
            verticalSpace(15),
            Container(
              height: 158,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: width(context) * .6,
                      padding: EdgeInsets.only(bottom: 15),
                      decoration: decoration(white, 12),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 12, right: 12),
                            child: Column(
                              children: [
                                ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading:
                                      Image.asset("assets/images/exam.png"),
                                  title: Text(
                                    "6:00 pm - 7:00 pm",
                                    style: bodyText14w500(black),
                                  ),
                                  subtitle: Text(
                                    "6th Jan 2023 (Fri)",
                                    style:
                                        bodyText10w500(black.withOpacity(.5)),
                                  ),
                                ),
                                Container(
                                  decoration: decoration(transparent, 6,
                                      borColor: primaryColor),
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.notifications_active_outlined,
                                          size: 15,
                                          color: primaryColor,
                                        ),
                                        horizontalSpace(5),
                                        Text(
                                          "Remind Me",
                                          style: bodyText12Bold(primaryColor),
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "IELTS Listening Tips",
                                  style: bodyText12Bold(black.withOpacity(.4)),
                                ),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 2),
                                    decoration: decoration(tabColor, 12,
                                        borColor: primaryColor),
                                    child: Text(
                                      "Classic",
                                      style: bodyText8normal(primaryColor),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return horizontalSpace(12);
                  },
                  itemCount: 6),
            ),
            verticalSpace(35),
            Text(
              "Diagnostic Test",
              style: bodyText16Bold(black),
            ),
            verticalSpace(12),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: decoration(white, 12),
                    child: ListTile(
                      onTap: () {
                        nextScreen(context, list[index]['screen']);
                      },
                      leading: Image.asset(list[index]["image"]),
                      title: Text(
                        list[index]["title"],
                        style: bodyText12Bold(black),
                      ),
                      subtitle: Row(
                        children: [
                          Image.asset(
                            "assets/images/tick.png",
                            height: 10,
                          ),
                          horizontalSpace(5),
                          Text(
                            "${list[index]['time']} Min",
                            style: bodyText10w500(black.withOpacity(.5)),
                          ),
                        ],
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        size: 20,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return verticalSpace(12);
                },
                itemCount: list.length)
          ],
        ),
      ),
    );
  }
}
