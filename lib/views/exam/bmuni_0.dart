import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class BMUni extends StatefulWidget {
  final int un;
  const BMUni({super.key, required this.un});

  @override
  State<BMUni> createState() => _BMUniState();
}

class _BMUniState extends State<BMUni> {
  bool? haveData = false;
  @override
  void initState() {
    // TODO: implement initState
    bool haveData = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return haveData == false
        ? Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      setState(() {
                        haveData = true;
                      });
                    });
                  },
                  child: Image.asset(
                    "assets/images/university.png",
                    height: 100,
                  ),
                ),
                verticalSpace(15),
                Text(
                  "No universities shortlisted yet",
                  style: bodyText16Bold(black),
                ),
                verticalSpace(8),
                Text(
                  "Check out the discover section for university profiles",
                  style: bodyText12normal(black.withOpacity(.5)),
                )
              ],
            ))
        : Container(
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      decoration: decoration(white, 6),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/manche.png",
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
                                  "The University of Manchester",
                                  style: bodyText12Bold(black),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                verticalSpace(10),
                                Text(
                                  "Manchester, United Kingdom",
                                  style: bodyText10w500(black.withOpacity(.5)),
                                ),
                                verticalSpace(10),
                                Text(
                                  "Public | Estd. 1824 | 850 Courses ",
                                  style: bodyText10w500(black),
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
