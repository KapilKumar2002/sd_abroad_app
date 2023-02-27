import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/mainscreens/languages_courses.dart';
import 'package:sd_abroad_app/views/mainscreens/mycourses.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class DashboardMain extends StatefulWidget {
  const DashboardMain({super.key});

  @override
  State<DashboardMain> createState() => _DashboardMainState();
}

class _DashboardMainState extends State<DashboardMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(45),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 32.5,
                  backgroundImage: AssetImage("assets/images/rakesh.png"),
                ),
                title: Text(
                  "Rakesh Sharma",
                  style: bodyText24w500(black),
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "rakesh143@gmail.com",
                      style: bodyText12normal(black.withOpacity(.5)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: decoration(white, 10),
                      child: Text(
                        "Edit",
                        style: bodyText12w500(black),
                      ),
                    )
                  ],
                ),
              ),
              verticalSpace(35),
              Container(
                decoration: decoration(white, 12),
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "University Chances",
                      style: bodyText10w500(black),
                    ),
                    verticalSpace(12),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "California University",
                                style: bodyText10w500(violet),
                              ),
                              Text(
                                "75% Chances",
                                style: bodyText8w500(black),
                              )
                            ],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                            height: 25,
                            color: black.withOpacity(.8),
                          );
                        },
                        itemCount: 5),
                    verticalSpace(15),
                    Center(
                      child: Text(
                        "View More",
                        style: bodyText12w500(violet,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpace(12),
              Text(
                "Your Courses",
                style: bodyText18w500(black),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: decoration(white, 12),
                    margin: EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/images/eng.png")),
                      title: Text(
                        "English Vocabulary",
                        style: bodyText10w500(black),
                      ),
                      subtitle: Text(
                        "Lorem Ipsum jefe heui isnw ncie",
                        style: bodyText8w500(black),
                      ),
                      trailing: InkWell(
                        onTap: () {
                          nextScreen(context, MyCourses());
                        },
                        child: Text(
                          "View",
                          style: bodyText10w500(black,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  );
                },
              ),
              verticalSpace(12),
              Text(
                "Your Language Courses",
                style: bodyText18w500(black),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: decoration(white, 12),
                    margin: EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/images/eng.png")),
                      title: Text(
                        "English Vocabulary",
                        style: bodyText10w500(black),
                      ),
                      subtitle: Text(
                        "Lorem Ipsum jefe heui isnw ncie",
                        style: bodyText8w500(black),
                      ),
                      trailing: InkWell(
                        onTap: () {
                          nextScreen(context, Languages_Courses());
                        },
                        child: Text(
                          "View",
                          style: bodyText10w500(black,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  );
                },
              ),
              Divider(),
              verticalSpace(10),
              Text(
                "Settings",
                style: bodyText16w500(black),
              ),
              verticalSpace(10),
              Divider(),
              verticalSpace(10),
              Text(
                "Logout",
                style: bodyText16w500(black),
              ),
              verticalSpace(10),
              Divider(),
              verticalSpace(80),
            ],
          ),
        ),
      ),
    );
  }
}
