import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/exam/eventsfullview.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        backgroundColor: transparent,
        elevation: 0,
        title: Text(
          "Events",
          style: bodyText16normal(black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: background,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: decoration(white, 12),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                      child: Column(
                        children: [
                          Image.asset("assets/images/sports.png"),
                          verticalSpace(10),
                          Text(
                            "Sports",
                            style: bodyText12w500(primaryColor),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: decoration(white, 12),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                      child: Column(
                        children: [
                          Image.asset("assets/images/art.png"),
                          verticalSpace(10),
                          Text(
                            "Art",
                            style: bodyText12w500(primaryColor),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: decoration(white, 12),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                      child: Column(
                        children: [
                          Image.asset("assets/images/game.png"),
                          verticalSpace(10),
                          Text(
                            "Gaming",
                            style: bodyText12w500(primaryColor),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: decoration(white, 12),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                      child: Column(
                        children: [
                          Image.asset("assets/images/speech.png"),
                          verticalSpace(10),
                          Text(
                            "Speech",
                            style: bodyText12w500(primaryColor),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                verticalSpace(20),
                Text(
                  "Live Events",
                  style: bodyText16Bold(black),
                ),
                verticalSpace(10),
                Container(
                  height: 162,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 150,
                          decoration: decoration(white, 12),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12)),
                                child: Image.asset(
                                  "assets/images/lievent.png",
                                  fit: BoxFit.fill,
                                  height: 84,
                                  width: 150,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Global Education Fair",
                                      style: bodyText12w500(black),
                                    ),
                                    verticalSpace(2),
                                    Row(
                                      children: [
                                        horizontalSpace(5),
                                        CircleAvatar(
                                          radius: 1,
                                          backgroundColor:
                                              black.withOpacity(.5),
                                        ),
                                        horizontalSpace(5),
                                        Text(
                                          "Live",
                                          style: bodyText10w500(
                                              black.withOpacity(.5)),
                                        ),
                                      ],
                                    ),
                                    verticalSpace(2),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          size: 18,
                                          color: black.withOpacity(.5),
                                        ),
                                        Expanded(
                                          child: Text(
                                            "The University of Manchester",
                                            style: bodyText10w500(
                                                black.withOpacity(.5),
                                                overflow: TextOverflow.visible),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return horizontalSpace(12);
                      },
                      itemCount: 6),
                ),
                verticalSpace(20),
                Text(
                  "Upcoming Events",
                  style: bodyText16Bold(black),
                ),
                verticalSpace(10),
                Container(
                  height: 200,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            nextScreen(context, EventsFullView());
                          },
                          child: Container(
                            width: 150,
                            decoration: decoration(white, 12),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12)),
                                  child: Image.asset(
                                    "assets/images/upevent.png",
                                    fit: BoxFit.fill,
                                    height: 84,
                                    width: 150,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "FootBall 2023",
                                        style: bodyText12w500(black),
                                      ),
                                      verticalSpace(2),
                                      Text(
                                        "13 Jan 2023",
                                        style: bodyText10w500(
                                            black.withOpacity(.5)),
                                      ),
                                      verticalSpace(2),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            size: 18,
                                            color: black.withOpacity(.5),
                                          ),
                                          Expanded(
                                            child: Text(
                                              "The University of Manchester",
                                              style: bodyText10w500(
                                                  black.withOpacity(.5),
                                                  overflow:
                                                      TextOverflow.visible),
                                            ),
                                          )
                                        ],
                                      ),
                                      verticalSpace(10),
                                      Container(
                                        decoration: decoration(transparent, 6,
                                            borColor: primaryColor),
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Remind Me",
                                                style: bodyText12Bold(
                                                    primaryColor),
                                              ),
                                              horizontalSpace(5),
                                              Icon(
                                                Icons
                                                    .notifications_active_outlined,
                                                size: 15,
                                                color: primaryColor,
                                              )
                                            ]),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return horizontalSpace(12);
                      },
                      itemCount: 6),
                ),
                verticalSpace(20),
                Text(
                  "Past Events",
                  style: bodyText16Bold(black),
                ),
                verticalSpace(10),
                Container(
                  height: 162,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 150,
                          decoration: decoration(white, 12),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12)),
                                child: Image.asset(
                                  "assets/images/poevent.png",
                                  height: 84,
                                  width: 150,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Global Education Fair",
                                      style: bodyText12w500(black),
                                    ),
                                    verticalSpace(2),
                                    Row(
                                      children: [
                                        horizontalSpace(5),
                                        CircleAvatar(
                                          radius: 1,
                                          backgroundColor:
                                              black.withOpacity(.5),
                                        ),
                                        horizontalSpace(5),
                                        Text(
                                          "Past Events",
                                          style: bodyText10w500(
                                              black.withOpacity(.5)),
                                        ),
                                      ],
                                    ),
                                    verticalSpace(2),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          size: 18,
                                          color: black.withOpacity(.5),
                                        ),
                                        Expanded(
                                          child: Text(
                                            "The University of Manchester",
                                            style: bodyText10w500(
                                                black.withOpacity(.5),
                                                overflow: TextOverflow.visible),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return horizontalSpace(12);
                      },
                      itemCount: 6),
                ),
                verticalSpace(20)
              ],
            )),
      ),
    );
  }
}
