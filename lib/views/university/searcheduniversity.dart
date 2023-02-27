import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/university/unicourses.dart';
import 'package:sd_abroad_app/views/university/universities.dart';

class SearchedUniversity extends StatefulWidget {
  const SearchedUniversity({super.key});

  @override
  State<SearchedUniversity> createState() => _SearchedUniversityState();
}

class _SearchedUniversityState extends State<SearchedUniversity>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final tab = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
            foregroundColor: black,
            backgroundColor: transparent,
            elevation: 0,
            bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                controller: tab,
                isScrollable: true,
                labelStyle: bodyText14Bold(primaryColor),
                labelColor: primaryColor,
                unselectedLabelColor: black,
                indicatorColor: Color(0xff5F71E4),
                indicatorWeight: 2.5,
                tabs: [
                  Tab(
                    text: "Universities (1)",
                  ),
                  Tab(
                    text: "Courses (64)",
                  )
                ]),
            title: Text(
              "Imperial College London",
              style: bodyText16normal(black),
            )),
      ),
      body: Container(
        height: height(context) - 50,
        color: background,
        child: TabBarView(
          controller: tab,
          children: [UniversitiesTab(), UniCourses()],
        ),
      ),
    );
  }
}
