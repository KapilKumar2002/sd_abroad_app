import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class BMCou_0 extends StatefulWidget {
  const BMCou_0({super.key});

  @override
  State<BMCou_0> createState() => _BMCou_0State();
}

class _BMCou_0State extends State<BMCou_0> {
  bool? haveData = false;
  @override
  void initState() {
    // TODO: implement initState
    bool haveData = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
        // haveData == false
        //     ? Container(
        //         padding: EdgeInsets.symmetric(horizontal: 25),
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             InkWell(
        //               onTap: () {
        //                 setState(() {
        //                   haveData = true;
        //                 });
        //               },
        //               child: Image.asset(
        //                 "assets/images/course.png",
        //                 height: 100,
        //               ),
        //             ),
        //             verticalSpace(15),
        //             Text(
        //               "No Courses saved yet",
        //               style: bodyText16Bold(black),
        //             ),
        //             verticalSpace(8),
        //             Text(
        //               "Check out the discover section for recommended courses",
        //               style: bodyText12normal(black.withOpacity(.5)),
        //               textAlign: TextAlign.center,
        //             )
        //           ],
        //         ),
        //       )
        //     :
        Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      color: background,
      child: Column(
        children: [
          ListView.separated(
            separatorBuilder: (context, index) {
              return horizontalSpace(10);
            },
            shrinkWrap: true,
            itemCount: 3,
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
                            "MSc - Applied Bioinformatics",
                            style: bodyText12Bold(black),
                            overflow: TextOverflow.ellipsis,
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
                    Icon(
                      Icons.bookmark_outlined,
                      color: primaryColor,
                    )
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
