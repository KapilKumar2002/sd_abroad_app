import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class FaqWidget extends StatefulWidget {
  const FaqWidget({super.key});

  @override
  State<FaqWidget> createState() => _FaqWidgetState();
}

class _FaqWidgetState extends State<FaqWidget> {
  List dropList = [
    {
      "title": "How much does it cost to study in UK?",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas."
    },
    {
      "title": "Is it possible to study in UK without IELTS?",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas."
    },
    {
      "title": "Can one work part-time while studying in UK?",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas."
    },
    {
      "title": "What is the minimum percentage required to study in the UK?",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas."
    },
    {
      "title": "Which are the best courses to study in the UK?",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas."
    },
    {
      "title": "Which are the top universities in the UK?",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas."
    },
    {
      "title": "How long can one stay after studying in the UK? ",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas."
    },
  ];
  int drop = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: dropList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  decoration: decoration(white, 6),
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              dropList[index]['title'],
                              style: bodyText14w500(black,
                                  overflow: TextOverflow.visible),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                drop == index ? drop = -1 : drop = index;
                              });
                            },
                            child: Container(
                              height: 16,
                              decoration: decoration(tabColor, 4),
                              width: 16,
                              child: Center(
                                child: Icon(
                                  drop == index
                                      ? CupertinoIcons.chevron_up
                                      : CupertinoIcons.chevron_down,
                                  size: 12,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      drop == index
                          ? Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas.",
                                style: bodyText12normal(black, height: 1.25),
                              ),
                            )
                          : Container(
                              height: 0,
                            ),
                    ],
                  ),
                ),
              );
            },
          ),
          verticalSpace(30),
          Container(
            height: 48,
            width: width(context),
            decoration: decoration(primaryColor, 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Talk to a United Kingdom Expert for Free",
                  style: bodyText12Bold(white),
                ),
                horizontalSpace(15),
                Icon(
                  Icons.arrow_forward,
                  color: white,
                  size: 20,
                )
              ],
            ),
          ),
          verticalSpace(25)
        ],
      ),
    );
  }
}
