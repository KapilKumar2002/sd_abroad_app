import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/university/bookmark.dart';
import 'package:sd_abroad_app/views/university/course_overview.dart';
import 'package:sd_abroad_app/views/university/institution.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class CourseFullView extends StatefulWidget {
  const CourseFullView({super.key});

  @override
  State<CourseFullView> createState() => _CourseFullViewState();
}

class _CourseFullViewState extends State<CourseFullView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        backgroundColor: transparent,
        elevation: 0,
        title: Text(
          "MPS - Management",
          style: bodyText16normal(black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                nextScreen(context, Bookmark());
              },
              icon: Icon(Icons.bookmark_outline))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/uk.png",
              height: 200,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/mps.png",
                    height: 59,
                    width: 59,
                    fit: BoxFit.fill,
                  ),
                  horizontalSpace(12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "MPS - Management",
                        style: bodyText20w500(black),
                      ),
                      verticalSpace(6),
                      Text(
                        "Cornell University, Ithaca, United States",
                        style: bodyText12w500(black.withOpacity(.5)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                controller: _tabController,
                labelStyle: bodyText16Bold(primaryColor),
                labelColor: primaryColor,
                unselectedLabelColor: black,
                indicatorColor: Color(0xff5F71E4),
                indicatorWeight: 2.5,
                tabs: [
                  Tab(
                    text: "Overview",
                  ),
                  Tab(
                    text: "Institution",
                  ),
                ]),
            Container(
              height: 720,
              child: TabBarView(
                  controller: _tabController,
                  children: [Full_Course_Overview(), Institution()]),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Container(
              height: 48,
              width: width(context),
              decoration: decoration(primaryColor, 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.call,
                    color: white,
                  ),
                  horizontalSpace(10),
                  Text(
                    "Talk to an Expert",
                    style: bodyText14Bold(white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
