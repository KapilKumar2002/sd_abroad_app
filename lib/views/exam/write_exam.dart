import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/exam/testresult.dart';
import 'package:sd_abroad_app/views/exam/writingscore.dart';
import 'package:sd_abroad_app/widgets/custom_questionwidget.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class WriteExam extends StatefulWidget {
  const WriteExam({super.key});

  @override
  State<WriteExam> createState() => _WriteExamState();
}

class _WriteExamState extends State<WriteExam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    "Write about the following topic:",
                    style: bodyText14Bold(black),
                  ),
                  verticalSpace(15),
                  Text(
                    "Learning English at school is often seen as more important than learning local languages. If these are not taught, many are at risk of dying out.",
                    style: bodyText14normal(black),
                  ),
                  verticalSpace(10),
                  Text(
                    "In your opinion, is it important for everyone to learn English? Should we try to ensure the survival of local languages and, if so, how?",
                    style: bodyText14normal(black),
                  ),
                  verticalSpace(10),
                  Text(
                    "Give reasons for your answer and include any relevant examples from your own knowledge or experience.",
                    style: bodyText14normal(black),
                  ),
                  verticalSpace(15),
                  Text(
                    "Write at least 250 words.",
                    style: bodyText14normal(black),
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
                  verticalSpace(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      height: 425,
                      decoration: decoration(white, 6),
                      child: TextFormField(
                        style: bodyText14w500(black.withOpacity(.4)),
                        minLines: 1,
                        maxLines: null,
                        decoration: InputDecoration(
                            hintText: "Write here", border: InputBorder.none),
                      ),
                    ),
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
            ),
            verticalSpace(15),
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
                      nextScreen(context, WritingScore());
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
