import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/destination/faq.dart';
import 'package:sd_abroad_app/views/destination/overview.dart';
import 'package:sd_abroad_app/views/destination/universitytab.dart';

class DestinationOverviewScreen extends StatefulWidget {
  const DestinationOverviewScreen({super.key});

  @override
  State<DestinationOverviewScreen> createState() =>
      _DestinationOverviewScreenState();
}

class _DestinationOverviewScreenState extends State<DestinationOverviewScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: transparent,
        elevation: 0,
        foregroundColor: black,
        title: Text(
          "UK",
          style: bodyText24w500(black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
                    "assets/images/ukflag.png",
                    height: 44,
                    width: 59,
                    fit: BoxFit.fill,
                  ),
                  horizontalSpace(12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Study in UK",
                        style: bodyText20w500(black),
                      ),
                      verticalSpace(6),
                      Text(
                        "629 Universities",
                        style: bodyText12w500(black.withOpacity(.4)),
                      ),
                      verticalSpace(5),
                      Text(
                        "496,570 International Students",
                        style: bodyText12w500(black),
                      ),
                    ],
                  )
                ],
              ),
            ),
            TabBar(
                indicatorSize: TabBarIndicatorSize.label,
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
                    text: "Universities",
                  ),
                  Tab(
                    text: "FAQ,s",
                  ),
                ]),
            Container(
              height: 3000,
              child: TabBarView(controller: _tabController, children: [
                OverViewWidget(),
                UniversitiesWiget(),
                FaqWidget(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
