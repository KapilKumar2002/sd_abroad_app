import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/university/university.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class UniversitiesWiget extends StatefulWidget {
  const UniversitiesWiget({super.key});

  @override
  State<UniversitiesWiget> createState() => _UniversitiesWigetState();
}

class _UniversitiesWigetState extends State<UniversitiesWiget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15),
            height: 48,
            decoration: decoration(white, 6),
            child: TextFormField(
              decoration: InputDecoration(
                  suffixIcon: ImageIcon(
                    AssetImage("assets/images/search.png"),
                    size: 18,
                  ),
                  hintText: "Where do you want to study?",
                  hintStyle: bodyText12Bold(black.withOpacity(.4)),
                  border: InputBorder.none),
            ),
          ),
          verticalSpace(30),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  nextScreen(context, UniversityScreen());
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: decoration(white, 6),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/manche.png",
                        width: 48,
                        height: 58,
                        fit: BoxFit.fill,
                      ),
                      horizontalSpace(12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The University of Manchester",
                              style: bodyText12Bold(black),
                            ),
                            verticalSpace(10),
                            Text(
                              "Manchester, United Kingdom",
                              style: bodyText10w500(black.withOpacity(.5)),
                            ),
                            verticalSpace(10),
                            Text(
                              "Public | Estd. 1965 | 336 Courses",
                              style: bodyText10w500(black),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.chevron_right)
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
