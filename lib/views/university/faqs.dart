import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class FaqS extends StatefulWidget {
  const FaqS({super.key});

  @override
  State<FaqS> createState() => _FaqSState();
}

class _FaqSState extends State<FaqS> {
  List dropList = [
    {
      "title":
          "What are the rules for international students for travelling back to the UK ?",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas."
    },
    {
      "title": "What are the application fees?",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas."
    },
    {
      "title": "What is the application deadline?",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas."
    },
    {
      "title": "Is Cranfield a good University ?",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas."
    },
    {
      "title": "What is Cranfield University Known for?",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas."
    },
    {
      "title": "How good is Cranfield University for Aerospace",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas."
    },
    {
      "title": "Is Cranfield a prestigious University?",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas."
    },
    {
      "title": "Is Cranfield a nice place to live? ",
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
        ],
      ),
    );
  }
}
