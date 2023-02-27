import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class ExamCourse extends StatefulWidget {
  const ExamCourse({super.key});

  @override
  State<ExamCourse> createState() => _ExamCourseState();
}

class _ExamCourseState extends State<ExamCourse> {
  List list = [
    {
      "title": "Listening Course",
      "subtitle":
          "Lorem ipsum dolor sit amet quae ab illo inventore veritatis et quasi"
    },
    {
      "title": "Reading Course",
      "subtitle":
          "Lorem ipsum dolor sit amet quae ab illo inventore veritatis et quasi"
    },
    {
      "title": "Writing Course",
      "subtitle":
          "Lorem ipsum dolor sit amet quae ab illo inventore veritatis et quasi"
    },
    {
      "title": "Speaking Course",
      "subtitle":
          "Lorem ipsum dolor sit amet quae ab illo inventore veritatis et quasi"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              decoration: decoration(white, 12),
              child: ListTile(
                leading: Container(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                    decoration: decoration(transparent, 6,
                        borColor: black.withOpacity(.2)),
                    child: Image.asset(
                      "assets/images/exam.png",
                      height: 34,
                    )),
                title: Text(
                  list[index]["title"],
                  style: bodyText12Bold(black),
                ),
                subtitle: Text(
                  list[index]['subtitle'],
                  style: bodyText10w500(black.withOpacity(.5)),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  size: 20,
                  color: black,
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return verticalSpace(12);
          },
          itemCount: list.length),
    );
  }
}
