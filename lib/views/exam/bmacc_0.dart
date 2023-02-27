import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/accommodation/propertyorroom.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class BMAcc_0 extends StatefulWidget {
  const BMAcc_0({super.key});

  @override
  State<BMAcc_0> createState() => _BMAcc_0State();
}

class _BMAcc_0State extends State<BMAcc_0> {
  bool? haveData = false;
  @override
  void initState() {
    // TODO: implement initState
    haveData = false;
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
                      haveData = true;
                    });
                  },
                  child: Image.asset(
                    "assets/images/acco.png",
                    height: 100,
                  ),
                ),
                verticalSpace(15),
                Text(
                  "No bookmarked found",
                  style: bodyText16Bold(black),
                ),
              ],
            ),
          )
        : SingleChildScrollView(
            child: Container(
              color: background,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    verticalSpace(10),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            nextScreen(context, Acco_Property_Room());
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10, top: 10),
                            width: width(context),
                            decoration: decoration(white, 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 14),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            child: Image.asset(
                                              "assets/images/accommo.png",
                                              width: width(context) * .38,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            child: Image.asset(
                                              "assets/images/accommo.png",
                                              width: width(context) * .38,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "\$ 17,000/ Month",
                                            style: bodyText16Bold(black),
                                          ),
                                          horizontalSpace(10),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 12),
                                            decoration:
                                                decoration(tabColor, 50),
                                            height: 16,
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.check,
                                                  size: 10,
                                                  color: primaryColor,
                                                ),
                                                horizontalSpace(4),
                                                Text(
                                                  "verified",
                                                  style: bodyText10normal(
                                                      primaryColor),
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(child: Container()),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.bookmark_outlined,
                                                color: primaryColor,
                                              ))
                                        ],
                                      ),
                                      Text(
                                        "1 BHK Flat",
                                        style: bodyText14w500(black),
                                      ),
                                      verticalSpace(10),
                                      Text(
                                        "Brahmand, Thane West",
                                        style: bodyText12w500(
                                            black.withOpacity(.4)),
                                      ),
                                      verticalSpace(10),
                                      Text(
                                        "600 sq.ft. | Fully Furnished",
                                        style: bodyText12w500(
                                            black.withOpacity(.6)),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration:
                                      decoration(black.withOpacity(.035), 12),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12, right: 12, bottom: 14),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            leading: CircleAvatar(
                                              backgroundColor: tabColor,
                                              radius: 17,
                                              child: Text(
                                                "A",
                                                style: bodyText16normal(
                                                    primaryColor),
                                              ),
                                            ),
                                            title: Text(
                                              "Ajit Borole",
                                              style: bodyText10w500(black),
                                            ),
                                            subtitle: Text(
                                              "Owner",
                                              style: bodyText10w500(
                                                  black.withOpacity(.4)),
                                            ),
                                            trailing: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Updated",
                                                  style: bodyText10w500(
                                                      black.withOpacity(.4)),
                                                ),
                                                verticalSpace(6),
                                                Text(
                                                  "Yesterday",
                                                  style: bodyText10w500(
                                                      black.withOpacity(.4)),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 8, vertical: 8),
                                              decoration: decoration(white, 6,
                                                  borColor: primaryColor),
                                              child: Image.asset(
                                                "assets/images/chat.png",
                                                height: 18,
                                              ),
                                            ),
                                            horizontalSpace(15),
                                            Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 14),
                                                height: 34,
                                                decoration: decoration(white, 6,
                                                    borColor: primaryColor),
                                                child: Center(
                                                  child: Text(
                                                    "Feedback",
                                                    style: bodyText10w500(
                                                        primaryColor),
                                                  ),
                                                )),
                                            horizontalSpace(15),
                                            Expanded(
                                              child: Container(
                                                height: 34,
                                                decoration:
                                                    decoration(primaryColor, 6),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.call,
                                                      color: white,
                                                      size: 18,
                                                    ),
                                                    horizontalSpace(4),
                                                    Text(
                                                      "Contact",
                                                      style:
                                                          bodyText12Bold(white),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          );
  }
}
