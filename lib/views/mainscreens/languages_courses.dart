import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class Languages_Courses extends StatefulWidget {
  const Languages_Courses({super.key});

  @override
  State<Languages_Courses> createState() => _Languages_CoursesState();
}

class _Languages_CoursesState extends State<Languages_Courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: black,
          backgroundColor: transparent,
          elevation: 0,
          title: Text(
            "Languages Courses",
            style: bodyText24w500(black),
          )),
      body: Container(
        color: background,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: decoration(white, 12),
                    margin: EdgeInsets.only(bottom: 12),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SPANISH",
                          style: bodyText10w500(black.withOpacity(.5)),
                        ),
                        verticalSpace(14),
                        Container(
                          decoration: decoration(transparent, 10,
                              borColor: black.withOpacity(.09)),
                          child: ListTile(
                            leading: Image.asset("assets/images/abc.png"),
                            title: Text(
                              "Spanish Day - 23",
                              style: bodyText16w500(black),
                            ),
                            subtitle: Text(
                              "Daily Used Words",
                              style: bodyText8w500(primaryColor),
                            ),
                          ),
                        ),
                        verticalSpace(12),
                        Center(
                          child: Container(
                            decoration:
                                decoration(transparent, 30, borColor: black),
                            padding: EdgeInsets.symmetric(
                                vertical: 7, horizontal: 20),
                            child: Text(
                              "View More",
                              style: bodyText14w500(black),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
