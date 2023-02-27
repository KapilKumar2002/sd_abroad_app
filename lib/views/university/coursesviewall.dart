import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/university/managementcourses.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class CoursesViewAll extends StatelessWidget {
  const CoursesViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: black,
          backgroundColor: transparent,
          elevation: 0,
          title: Text(
            "Select a subject",
            style: bodyText16normal(black),
          )),
      body: SingleChildScrollView(
        child: Container(
          color: background,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            child: Column(
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 12,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: width(context) * .37 / 144,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        nextScreen(context, ManagementCourses());
                      },
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        width: width(context) * .4,
                        decoration: decoration(white, 12),
                        child: Column(
                          children: [
                            verticalSpace(15),
                            Image.asset("assets/images/mana.png"),
                            verticalSpace(15),
                            Text(
                              "Management",
                              style: bodyText14w500(black),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
