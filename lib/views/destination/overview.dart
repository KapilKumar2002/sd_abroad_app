import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/widgets/mba.dart';
import 'package:sd_abroad_app/widgets/pg.dart';
import 'package:sd_abroad_app/widgets/ug.dart';

class OverViewWidget extends StatefulWidget {
  const OverViewWidget({super.key});

  @override
  State<OverViewWidget> createState() => _OverViewWidgetState();
}

class _OverViewWidgetState extends State<OverViewWidget> {
  int drop = 0;
  int index = 0;
  List list = [UG(), PG(), MBA()];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      color: background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: width(context) * .4,
                height: 200,
                padding:
                    EdgeInsets.only(top: 25, bottom: 35, left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/images/build.png",
                      fit: BoxFit.fill,
                      width: width(context) * .25,
                    ),
                    Text(
                      "London",
                      style: bodyText16Bold(black),
                    ),
                    Text(
                      "Capital",
                      style: bodyText14w500(black.withOpacity(.5)),
                    )
                  ],
                ),
                decoration: decoration(white, 12),
              ),
              Container(
                width: width(context) * .4,
                height: 200,
                padding:
                    EdgeInsets.only(top: 25, bottom: 35, right: 20, left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/images/users.png",
                      fit: BoxFit.fill,
                      width: width(context) * .25,
                    ),
                    Text(
                      "68 Mn",
                      style: bodyText16Bold(black),
                    ),
                    Text(
                      "Population",
                      style: bodyText14w500(black.withOpacity(.5)),
                    )
                  ],
                ),
                decoration: decoration(white, 12),
              ),
            ],
          ),
          verticalSpace(25),
          Container(
            height: 300,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: decoration(white, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Why study in UK",
                  style: bodyText16Bold(black),
                ),
                verticalSpace(12),
                Text(
                  "The United Kingdom is home to some of the most premier educatonal institutes that have etched their name in both QS World University and Times Higher Education Rankings. With an array of bachelor’s and master’s programs and a vibrant atmosphere, lakhs of international students prefer to go the United Kingdom to gain the best quality education.",
                  style: bodyText12normal(black, height: 2),
                ),
                verticalSpace(15),
                Container(
                  height: 44,
                  width: width(context),
                  decoration: decoration(white, 6, borColor: primaryColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Download Study in UK Guide",
                        style: bodyText12Bold(primaryColor),
                      ),
                      horizontalSpace(8),
                      Icon(
                        Icons.file_download_outlined,
                        color: primaryColor,
                        size: 20,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          verticalSpace(35),
          Text(
            "Top University",
            style: bodyText16w500(black),
          ),
          verticalSpace(15),
          GridView.builder(
            itemCount: 8,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: width(context) * .35 / 154),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                decoration: decoration(white, 12),
                child: Column(
                  children: [
                    Image.asset("assets/images/imp.png"),
                    verticalSpace(15),
                    Text(
                      "Imperial College London",
                      style: bodyText12Bold(black, height: 1.5),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              );
            },
          ),
          verticalSpace(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 44,
              width: width(context),
              decoration: decoration(transparent, 6, borColor: primaryColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "View all universities",
                    style: bodyText12Bold(primaryColor),
                  ),
                  horizontalSpace(10),
                  Icon(
                    Icons.chevron_right,
                    color: primaryColor,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
          verticalSpace(25),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: decoration(white, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Admission Requirements",
                  style: bodyText16Bold(black),
                ),
                Container(
                  height: 40,
                  child: ListTile(
                    horizontalTitleGap: -5,
                    minVerticalPadding: 2,
                    contentPadding: EdgeInsets.zero,
                    leading: Image.asset(
                      "assets/images/pass.png",
                      height: 24,
                    ),
                    title: Text(
                      "Copy of a valid passport",
                      style: bodyText14normal(black),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  child: ListTile(
                    horizontalTitleGap: -5,
                    minVerticalPadding: 2,
                    contentPadding: EdgeInsets.zero,
                    leading: Image.asset(
                      "assets/images/c2.png",
                      height: 24,
                    ),
                    title: Text(
                      "TOEFL/IELTS/C1 Advanced scores",
                      style: bodyText14normal(black),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  child: ListTile(
                    horizontalTitleGap: -5,
                    minVerticalPadding: 2,
                    contentPadding: EdgeInsets.zero,
                    leading: Image.asset(
                      "assets/images/pg.png",
                      height: 24,
                    ),
                    title: Text(
                      "GMAT/GRE scores for PG programs",
                      style: bodyText14normal(black),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  child: ListTile(
                    horizontalTitleGap: -5,
                    minVerticalPadding: 2,
                    contentPadding: EdgeInsets.zero,
                    leading: Image.asset(
                      "assets/images/aca.png",
                      height: 24,
                    ),
                    title: Text(
                      "Academic Transcripts",
                      style: bodyText14normal(black),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  child: ListTile(
                    horizontalTitleGap: -5,
                    minVerticalPadding: 2,
                    contentPadding: EdgeInsets.zero,
                    leading: Image.asset(
                      "assets/images/lor.png",
                      height: 24,
                    ),
                    title: Text(
                      "Letter of Recommendations (LORs)",
                      style: bodyText14normal(black),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  child: ListTile(
                    horizontalTitleGap: -5,
                    minVerticalPadding: 2,
                    contentPadding: EdgeInsets.zero,
                    leading: Image.asset(
                      "assets/images/port.png",
                      height: 24,
                    ),
                    title: Text(
                      "Portfolio (for specific courses)",
                      style: bodyText14normal(black),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  child: ListTile(
                    horizontalTitleGap: -5,
                    minVerticalPadding: 2,
                    contentPadding: EdgeInsets.zero,
                    leading: Image.asset(
                      "assets/images/cv.png",
                      height: 24,
                    ),
                    title: Text(
                      "A CV (if applicable)",
                      style: bodyText14normal(black),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  child: ListTile(
                    horizontalTitleGap: -5,
                    minVerticalPadding: 2,
                    contentPadding: EdgeInsets.zero,
                    leading: Image.asset(
                      "assets/images/sop.png",
                      height: 24,
                    ),
                    title: Text(
                      "Statement of Purpose (SOP)",
                      style: bodyText14normal(black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(25),
          Text(
            "Admission Timeline",
            style: bodyText16w500(black),
          ),
          verticalSpace(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Container(
                  width: width(context) * .25,
                  height: 28,
                  child: Center(
                      child: Text(
                    "UG",
                    style: bodyText12w500(primaryColor),
                  )),
                  decoration: decoration(index == 0 ? white : tabColor, 6,
                      borColor: index == 0 ? primaryColor : transparent),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Container(
                  width: width(context) * .25,
                  height: 28,
                  child: Center(
                      child: Text(
                    "PG",
                    style: bodyText12w500(primaryColor),
                  )),
                  decoration: decoration(index == 1 ? white : tabColor, 6,
                      borColor: index == 1 ? primaryColor : transparent),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: Container(
                  width: width(context) * .25,
                  height: 28,
                  child: Center(
                      child: Text(
                    "MBA",
                    style: bodyText12w500(primaryColor),
                  )),
                  decoration: decoration(index == 2 ? white : tabColor, 6,
                      borColor: index == 2 ? primaryColor : transparent),
                ),
              ),
            ],
          ),
          verticalSpace(15),
          list[drop],
          verticalSpace(15),
          Text(
            "Post Admission Experience",
            style: bodyText16w500(black),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Visa Options",
                      style: bodyText14w500(black),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          drop == 0 ? drop = 1 : drop = 0;
                        });
                      },
                      child: Container(
                        height: 16,
                        decoration: decoration(tabColor, 4),
                        width: 16,
                        child: Center(
                          child: Icon(
                            CupertinoIcons.chevron_down,
                            size: 12,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                drop == 0
                    ? Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "All UG Applications are submitted through UCAS.",
                          style: bodyText12normal(black.withOpacity(.5)),
                        ),
                      )
                    : Container(
                        height: 0,
                      ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Expenses & Cost of Living",
                      style: bodyText14w500(black),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          drop == 0 ? drop = 1 : drop = 0;
                        });
                      },
                      child: Container(
                        height: 16,
                        decoration: decoration(tabColor, 4),
                        width: 16,
                        child: Center(
                          child: Icon(
                            CupertinoIcons.chevron_down,
                            size: 12,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                drop == 0
                    ? Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "All UG Applications are submitted through UCAS.",
                          style: bodyText12normal(black.withOpacity(.5)),
                        ),
                      )
                    : Container(
                        height: 0,
                      ),
              ],
            ),
          ),
          verticalSpace(25),
          Text(
            "Career + Work Opportunities",
            style: bodyText16w500(black),
          ),
          verticalSpace(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 144,
                width: width(context) * .4,
                decoration: decoration(white, 12),
                child: Column(
                  children: [
                    verticalSpace(12),
                    Image.asset("assets/images/mana.png"),
                    verticalSpace(15),
                    Text(
                      "Management",
                      style: bodyText14w500(black),
                    )
                  ],
                ),
              ),
              Container(
                height: 144,
                width: width(context) * .4,
                decoration: decoration(white, 12),
                child: Column(
                  children: [
                    verticalSpace(12),
                    Image.asset("assets/images/engi.png"),
                    verticalSpace(15),
                    Text(
                      "Engineering",
                      style: bodyText14w500(black),
                    )
                  ],
                ),
              ),
            ],
          ),
          verticalSpace(30),
          Text(
            "Other Destinations",
            style: bodyText16w500(black),
          ),
          verticalSpace(12),
          Container(
            height: 155,
            child: ListView.separated(
                separatorBuilder: (context, index) {
                  return horizontalSpace(15);
                },
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 154,
                    width: width(context) * .75,
                    child: Stack(children: [
                      Image.asset(
                        "assets/images/od.png",
                        width: width(context) * .75,
                        height: 154,
                        fit: BoxFit.fill,
                      ),
                      Align(
                        alignment: AlignmentDirectional.bottomStart,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, bottom: 10),
                          child: Text(
                            "USA",
                            style: bodyText16Bold(white),
                          ),
                        ),
                      )
                    ]),
                  );
                }),
          ),
          verticalSpace(25),
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
