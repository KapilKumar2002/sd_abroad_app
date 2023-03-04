import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/university/search.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class Courses extends StatefulWidget {
  final GlobalKey<ScaffoldState> Skey;
  const Courses({super.key, required this.Skey});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  nextScreen(context, SearchScreen());
                },
                child: Container(
                    color: white,
                    height: 44,
                    child: TextFormField(
                      cursorColor: black,
                      decoration: InputDecoration(
                          enabled: false,
                          prefixIcon: Image.asset("assets/images/search.png"),
                          hintText: "Search",
                          hintStyle: bodyText12Bold(black.withOpacity(.4)),
                          border: InputBorder.none),
                    )),
              )),
              horizontalSpace(20),
              InkWell(
                onTap: () {
                  widget.Skey.currentState!.openEndDrawer();
                  print("object");
                },
                child: Container(
                  decoration: decoration(tabColor, 6),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Image.asset(
                    "assets/images/filter.png",
                    height: 20,
                  ),
                ),
              )
            ],
          ),
          verticalSpace(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 28,
                width: width(context) * .26,
                decoration:
                    decoration(index == 0 ? tabColor : grey.withOpacity(.5), 6),
                child: Center(
                  child: Text(
                    "All",
                    style: bodyText12w500(index == 0 ? primaryColor : darkGrey),
                  ),
                ),
              ),
              Container(
                height: 28,
                width: width(context) * .26,
                decoration:
                    decoration(index == 1 ? tabColor : grey.withOpacity(.5), 6),
                child: Center(
                  child: Text(
                    "Management",
                    style: bodyText12w500(index == 1 ? primaryColor : darkGrey),
                  ),
                ),
              ),
              Container(
                height: 28,
                width: width(context) * .26,
                decoration:
                    decoration(index == 2 ? tabColor : grey.withOpacity(.5), 6),
                child: Center(
                  child: Text(
                    "Engineering",
                    style: bodyText12w500(index == 2 ? primaryColor : darkGrey),
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(20),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                decoration: decoration(white, 6),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/cran.png",
                      fit: BoxFit.fill,
                      height: 54,
                      width: 54,
                    ),
                    horizontalSpace(12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "MSc - Applied Bioinformatics...",
                            style: bodyText12Bold(black),
                          ),
                          verticalSpace(10),
                          Text(
                            "Cranfield University, United Kingdom",
                            style: bodyText10w500(black.withOpacity(.5)),
                          ),
                          verticalSpace(10),
                          Row(
                            children: [
                              Text(
                                "Fee: ",
                                style: bodyText10w500(black.withOpacity(.5)),
                              ),
                              Text(
                                "GBP 21,500/year",
                                style: bodyText10w500(black),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                child: Text(
                                  "|",
                                  style: bodyText10Bold(grey),
                                ),
                              ),
                              Text(
                                "Duration: ",
                                style: bodyText10w500(black.withOpacity(.5)),
                              ),
                              Text(
                                "1 Year",
                                style: bodyText10w500(black),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right)
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
