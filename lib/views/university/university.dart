import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/university/bookmark.dart';
import 'package:sd_abroad_app/views/university/course.dart';
import 'package:sd_abroad_app/views/university/faqs.dart';
import 'package:sd_abroad_app/views/university/overviewuni.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class UniversityScreen extends StatefulWidget {
  const UniversityScreen({super.key});

  @override
  State<UniversityScreen> createState() => _UniversityScreenState();
}

class _UniversityScreenState extends State<UniversityScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final tab = TabController(length: 3, vsync: this);
    return Scaffold(
      floatingActionButton: Container(
        height: 48,
        child: FloatingActionButton(
          backgroundColor: primaryColor,
          onPressed: () {},
          child: Icon(Icons.share),
        ),
      ),
      appBar: AppBar(
        foregroundColor: black,
        backgroundColor: transparent,
        elevation: 0,
        title: Text("Cranfield University"),
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
            Container(
              height: 200,
              width: width(context),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/uni.png",
                    width: width(context),
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                  Align(
                    alignment: AlignmentDirectional.center,
                    child: Image.asset(
                      "assets/images/play.png",
                      height: 37,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/cran.png",
                    fit: BoxFit.fill,
                  ),
                  horizontalSpace(15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cranfield University",
                        style: bodyText20w500(black),
                      ),
                      verticalSpace(6),
                      Text(
                        "Cranfield, United Kingdom",
                        style: bodyText12w500(black.withOpacity(.4)),
                      ),
                      verticalSpace(5),
                      Text(
                        "Public | Estd. 1946",
                        style: bodyText12w500(black),
                      ),
                    ],
                  )
                ],
              ),
            ),
            TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              controller: tab,
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
                  text: "Courses",
                ),
                Tab(
                  text: "FAQ,s",
                )
              ],
            ),
            Container(
              height: 1500,
              child: TabBarView(
                  controller: tab,
                  children: [OverviewUni(), Courses(), FaqS()]),
            ),
          ],
        ),
      ),
    );
  }
}
