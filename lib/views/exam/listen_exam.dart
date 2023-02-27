import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/exam/testresult.dart';
import 'package:sd_abroad_app/widgets/custom_questionwidget.dart';
import 'package:sd_abroad_app/widgets/customtextfield.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class ListenExam extends StatefulWidget {
  const ListenExam({super.key});

  @override
  State<ListenExam> createState() => _ListenExamState();
}

class _ListenExamState extends State<ListenExam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  verticalSpace(50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Listening Exam",
                        style: bodyText12w400(black),
                      ),
                      Text(
                        "00 : 14 : 42",
                        style: bodyText18Bold(black),
                      ),
                      Text(
                        "Quite exam",
                        style: bodyText12w500(primaryColor),
                      )
                    ],
                  ),
                  verticalSpace(25),
                  Text(
                    "Listen to the audio carefully and answer the questions based on the audio",
                    style: bodyText12normal(black),
                  ),
                  verticalSpace(10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: decoration(transparent, 12,
                        borColor: black.withOpacity(.1)),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: black.withOpacity(.1),
                          child: Icon(
                            Icons.play_arrow,
                            color: black,
                          ),
                        ),
                        Expanded(
                            child: LinearPercentIndicator(
                          lineHeight: 4,
                          backgroundColor: black.withOpacity(.1),
                        )),
                        Text(
                          "00:00 / 06:54",
                          style: bodyText12normal(black),
                        )
                      ],
                    ),
                  ),
                  verticalSpace(20),
                ],
              ),
            ),
            Container(
              width: width(context),
              color: background,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Complete the notes below.",
                    style: bodyText14normal(black),
                  ),
                  verticalSpace(10),
                  Text(
                    "Write ONE WORD ONLY for each answer.",
                    style: bodyText14Bold(black),
                  ),
                  verticalSpace(12),
                  Text(
                    "CITY BREAKS",
                    style: bodyText14Bold(black),
                  ),
                  verticalSpace(25),
                  Text(
                    "Highland Trek",
                    style: bodyText14Bold(black),
                  ),
                  verticalSpace(12),
                  CustomQuestionWidget(
                    preText: "Idea for",
                    q_no: "1",
                    postText: "doesn't require",
                    boText: "high fitness level",
                  ),
                  verticalSpace(15),
                  CustomQuestionWidget(
                    q_no: "2",
                    postText: "available as charging",
                    boText: "rooms hilly region",
                  ),
                  verticalSpace(12),
                  CustomQuestionWidget(
                    preText: "North Star it is a ",
                    q_no: "3",
                    boText: "trek",
                  ),
                  verticalSpace(15),
                  CustomQuestionWidget(
                    preText: "there are",
                    q_no: "4",
                    postText: "to take",
                    boText: "rest",
                  ),
                  verticalSpace(15),
                  CustomQuestionWidget(
                    preText: "there are",
                    q_no: "5",
                    postText: "to take",
                    boText: "rest",
                  ),
                  verticalSpace(15),
                  CustomQuestionWidget(
                    preText: "there are",
                    q_no: "6",
                    postText: "to take",
                    boText: "rest",
                  ),
                  verticalSpace(12),
                  CustomQuestionWidget(
                    preText: "North Star it is a ",
                    q_no: "7",
                    boText: "trek",
                  ),
                  verticalSpace(15),
                  CustomQuestionWidget(
                    q_no: "8",
                    postText: "available as charging",
                    boText: "rooms hilly region",
                  ),
                  verticalSpace(25),
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => showDialogBox());
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        height: 48,
                        width: width(context),
                        decoration: decoration(primaryColor, 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Submit",
                              style: bodyText14Bold(white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  verticalSpace(15),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  showDialogBox() {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      content: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: green,
              child: Icon(
                Icons.check,
                color: white,
                size: 35,
              ),
            ),
            verticalSpace(15),
            Text(
              "Do you want to Submit the exam?",
              style: bodyText14Bold(black),
            ),
            verticalSpace(10),
            Text(
              "You will not be able to attempt this\nexam again after submitting",
              style: bodyText12normal(black),
              textAlign: TextAlign.center,
            ),
            verticalSpace(20),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      goBack(context);
                    },
                    child: Container(
                      height: 36,
                      width: width(context),
                      decoration:
                          decoration(transparent, 6, borColor: primaryColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Cancel",
                            style: bodyText12Bold(primaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                horizontalSpace(25),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      nextScreen(
                          context,
                          TestResult(
                              testname: "Listening score",
                              marks: 4,
                              correct: 4,
                              incorrect: 2,
                              skipped: 0));
                    },
                    child: Container(
                      height: 36,
                      width: width(context),
                      decoration: decoration(primaryColor, 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Submit Exam",
                            style: bodyText12Bold(white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
