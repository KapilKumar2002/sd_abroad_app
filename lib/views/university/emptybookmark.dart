import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/exam/bmacc_0.dart';
import 'package:sd_abroad_app/views/exam/bmcou_0.dart';
import 'package:sd_abroad_app/views/exam/bmuni_0.dart';

class EmptyBookmark extends StatefulWidget {
  const EmptyBookmark({super.key});

  @override
  State<EmptyBookmark> createState() => _EmptyBookmarkState();
}

class _EmptyBookmarkState extends State<EmptyBookmark>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final tab = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
          foregroundColor: black,
          backgroundColor: transparent,
          elevation: 0,
          title: Text(
            "Bookmarks",
            style: bodyText16normal(black),
          )),
      body: Column(
        children: [
          TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            controller: tab,
            isScrollable: true,
            labelStyle: bodyText16Bold(primaryColor),
            labelColor: primaryColor,
            unselectedLabelColor: black,
            indicatorColor: Color(0xff5F71E4),
            indicatorWeight: 2.5,
            tabs: [
              Tab(
                text: "Universities (3)",
              ),
              Tab(
                text: "Courses (3)",
              ),
              Tab(
                text: "Accommodation (3)",
              ),
            ],
          ),
          Expanded(
              child: TabBarView(
                  controller: tab, children: [BMUni(), BMCou_0(), BMAcc_0()]))
        ],
      ),
    );
  }
}
