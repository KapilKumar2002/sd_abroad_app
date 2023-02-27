import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/exam/testresult.dart';
import 'package:sd_abroad_app/widgets/custom_questionwidget.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class ReadExam extends StatefulWidget {
  const ReadExam({super.key});

  @override
  State<ReadExam> createState() => _ReadExamState();
}

class _ReadExamState extends State<ReadExam> {
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
                        "Reading Exam",
                        style: bodyText12w400(black),
                      ),
                      Text(
                        "00 : 14 : 55",
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
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: bodyText12normal(black),
                  ),
                  verticalSpace(20)
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
                    "Questions",
                    style: bodyText14normal(black),
                  ),
                  verticalSpace(10),
                  Text(
                    "Answer the questions below.",
                    style: bodyText14Bold(black),
                  ),
                  verticalSpace(10),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: "Choose ",
                      style: bodyText14normal(black),
                    ),
                    TextSpan(
                      text: "NO MORE THAN TOW WORDS ",
                      style: bodyText14Bold(black),
                    ),
                    TextSpan(
                      text: "from the passage for each answer.",
                      style: bodyText14normal(black),
                    ),
                  ])),
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
                              testname: "Reading score",
                              marks: 5,
                              correct: 5,
                              incorrect: 1,
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
