import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class Acco_Property_Room extends StatefulWidget {
  const Acco_Property_Room({super.key});

  @override
  State<Acco_Property_Room> createState() => _Acco_Property_RoomState();
}

class _Acco_Property_RoomState extends State<Acco_Property_Room> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: black,
          backgroundColor: transparent,
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_outline)),
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => CustomDialogBox());
                },
                icon: Icon(Icons.share)),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                child: PageView.builder(
                  itemBuilder: (context, index) {
                    return Image.asset("assets/images/room.png");
                  },
                ),
              ),
              verticalSpace(12),
              Row(
                children: [
                  Text(
                    "\$ 17,000/ ",
                    style: bodyText16Bold(black),
                  ),
                  Text(
                    "Month (\$ 70.0 k Deposit) ",
                    style: bodyText10normal(black),
                  ),
                  Text(
                    "View Charges",
                    style: bodyText10normal(primaryColor),
                  )
                ],
              ),
              verticalSpace(14),
              Row(
                children: [
                  Text(
                    "1 BHK Flat",
                    style: bodyText14w500(black),
                  ),
                  horizontalSpace(10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: decoration(tabColor, 50),
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
                          style: bodyText10normal(primaryColor),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              verticalSpace(12),
              Row(
                children: [
                  Text(
                    "Brahmand, Thane West",
                    style: bodyText12w500(black.withOpacity(.4)),
                  ),
                  horizontalSpace(10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: decoration(tabColor, 50),
                    height: 16,
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 10,
                          color: primaryColor,
                        ),
                        horizontalSpace(4),
                        Text(
                          "See on Map",
                          style: bodyText10normal(primaryColor),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              verticalSpace(12),
              Row(
                children: [
                  Text(
                    "600 sq.ft. | Fully Furnished ",
                    style: bodyText10w500(black.withOpacity(.6)),
                  ),
                  Text(
                    "(Built up area)",
                    style: bodyText10w500(black.withOpacity(.4)),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Preferred tenant type is ",
                    style: bodyText10w500(black.withOpacity(.4)),
                  ),
                  Text(
                    "Family",
                    style: bodyText10w500(black.withOpacity(.6)),
                  ),
                ],
              ),
              verticalSpace(12),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: decoration(black.withOpacity(.075), 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ajit Borole",
                          style: bodyText10w500(black),
                        ),
                        Text(
                          "Owner",
                          style: bodyText10w500(black.withOpacity(.4)),
                        ),
                        verticalSpace(15),
                        Text(
                          "395 tenats served",
                          style: bodyText10w500(black.withOpacity(.4)),
                        ),
                        Text(
                          "Posted on 2 January 2023",
                          style: bodyText10w500(black),
                        )
                      ],
                    ),
                    Container(
                      decoration: decoration(primaryColor, 6),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/chat.png",
                            height: 15,
                            color: white,
                          ),
                          horizontalSpace(5),
                          Text(
                            "Chat Now",
                            style: bodyText10Bold(white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              verticalSpace(25),
              Text(
                "Similar Properties",
                style: bodyText12Bold(black),
              ),
              verticalSpace(4),
              Text(
                "Properties related to what you just viewed",
                style: bodyText10w500(black.withOpacity(.4)),
              ),
              verticalSpace(15),
              Container(
                height: 160,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        width: width(context) * .65,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(6),
                                  child: Image.asset(
                                    "assets/images/room2.png",
                                    width: 84,
                                    height: 88,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                horizontalSpace(10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "17,000/ Month",
                                        style: bodyText14Bold(black),
                                      ),
                                      verticalSpace(2),
                                      Text(
                                        "1 BHK Apartment",
                                        style: bodyText10w500(
                                            black.withOpacity(.4)),
                                      ),
                                      verticalSpace(2),
                                      Text(
                                        "Cosmos Residency, Kavesar fkakfsfd;jja;f",
                                        style: bodyText10w500(
                                            black.withOpacity(.4),
                                            overflow: TextOverflow.ellipsis),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Divider(),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: black.withOpacity(.08),
                                  backgroundImage:
                                      AssetImage("assets/images/rakesh.png"),
                                ),
                                horizontalSpace(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Rakesh N Gupta",
                                      style: bodyText10w500(black),
                                    ),
                                    Text(
                                      "Agent",
                                      style:
                                          bodyText10w500(black.withOpacity(.4)),
                                    ),
                                  ],
                                ),
                                Expanded(child: Container()),
                                Row(
                                  children: [
                                    Container(
                                      decoration: decoration(primaryColor, 6),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 8),
                                      child: Image.asset(
                                        "assets/images/chat.png",
                                        color: white,
                                        height: 14,
                                      ),
                                    ),
                                    horizontalSpace(10),
                                    Container(
                                        decoration: decoration(green, 6),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 8),
                                        child: Icon(
                                          Icons.call,
                                          color: white,
                                          size: 14,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return horizontalSpace(15);
                    },
                    itemCount: 5),
              ),
              verticalSpace(15),
              Container(
                decoration: decoration(black.withOpacity(.035), 12),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        height: 34,
                        decoration: decoration(black.withOpacity(.08), 6),
                        child: Center(
                          child: Text(
                            "Feedback",
                            style: bodyText10w500(primaryColor),
                          ),
                        )),
                    horizontalSpace(15),
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        decoration: decoration(black.withOpacity(.08), 6),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/chat.png",
                              height: 15,
                            ),
                            horizontalSpace(5),
                            Text(
                              "Chat",
                              style: bodyText10w500(primaryColor),
                            )
                          ],
                        )),
                    horizontalSpace(15),
                    Expanded(
                      child: Container(
                        height: 34,
                        decoration: decoration(primaryColor, 6),
                        child: Center(
                          child: Text(
                            "Call 1234567890",
                            style: bodyText12Bold(white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              verticalSpace(20)
            ],
          ),
        ),
      ),
    );
  }

  Widget CustomDialogBox() {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      content: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        color: background,
        height: height(context) * .55,
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: tabColor,
                  child: Text(
                    "A",
                    style: bodyText16normal(primaryColor),
                  ),
                ),
                horizontalSpace(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ajit Borole",
                      style: bodyText14w500(black),
                    ),
                    verticalSpace(2),
                    Text(
                      "Owner",
                      style: bodyText12w500(black.withOpacity(.4)),
                    ),
                    verticalSpace(2),
                    Text(
                      "1234567890",
                      style: bodyText12Bold(black),
                    )
                  ],
                ),
                Expanded(child: Container()),
                Row(
                  children: [
                    Container(
                        decoration: decoration(transparent, 6, borColor: green),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Image.asset(
                          "assets/images/whatsapp.png",
                          height: 15,
                        )),
                    horizontalSpace(10),
                    Container(
                        decoration: decoration(green, 6),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Icon(
                          Icons.phone,
                          color: white,
                          size: 15,
                        )),
                  ],
                )
              ],
            ),
            verticalSpace(15),
            Container(
              height: 48,
              width: width(context),
              decoration: decoration(primaryColor, 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.share,
                    color: white,
                  ),
                  horizontalSpace(10),
                  Text(
                    "Share This Property",
                    style: bodyText12Bold(white),
                  )
                ],
              ),
            ),
            verticalSpace(14),
            Container(
              height: 216,
              width: width(context),
              color: white,
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Similar Properties",
                    style: bodyText12Bold(black),
                  ),
                  Text(
                    "Properties related to what you just viewed",
                    style: bodyText10w500(black.withOpacity(.4)),
                  ),
                  verticalSpace(14),
                  Container(
                    height: 150,
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return horizontalSpace(20);
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 200,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(6),
                                    child: Image.asset(
                                      "assets/images/room2.png",
                                      width: 84,
                                      height: 88,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  horizontalSpace(10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "17,000/ Month",
                                          style: bodyText14Bold(black),
                                        ),
                                        verticalSpace(2),
                                        Text(
                                          "1 BHK Apartment",
                                          style: bodyText10w500(
                                              black.withOpacity(.4)),
                                        ),
                                        verticalSpace(2),
                                        Text(
                                          "Cosmos Residency, Kavesar fkakfsfd;jja;f",
                                          style: bodyText10w500(
                                              black.withOpacity(.4),
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: black.withOpacity(.08),
                                    backgroundImage:
                                        AssetImage("assets/images/rakesh.png"),
                                  ),
                                  horizontalSpace(10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Rakesh N Gupta",
                                        style: bodyText10w500(black),
                                      ),
                                      Text(
                                        "Agent",
                                        style: bodyText10w500(
                                            black.withOpacity(.4)),
                                      ),
                                    ],
                                  ),
                                  Expanded(child: Container()),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: decoration(primaryColor, 6),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 8),
                                        child: Image.asset(
                                          "assets/images/chat.png",
                                          color: white,
                                          height: 14,
                                        ),
                                      ),
                                      horizontalSpace(10),
                                      Container(
                                          decoration: decoration(green, 6),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 8),
                                          child: Icon(
                                            Icons.call,
                                            color: white,
                                            size: 14,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
