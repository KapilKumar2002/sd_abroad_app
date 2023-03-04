import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/accommodation/propertyorroom.dart';
import 'package:sd_abroad_app/widgets/customdropdown.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class AccommodationResult extends StatefulWidget {
  const AccommodationResult({super.key});

  @override
  State<AccommodationResult> createState() => _AccommodationResultState();
}

class _AccommodationResultState extends State<AccommodationResult> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        backgroundColor: transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            goBack(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 15,
          ),
        ),
        title: TextFormField(
          controller: controller,
          decoration: InputDecoration(
              prefixIcon: Image.asset("assets/images/search.png"),
              border: InputBorder.none,
              hintText: "titwala east",
              hintStyle: bodyText12Bold(black.withOpacity(.4))),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: background,
          child: Column(
            children: [
              Container(
                height: 70,
                color: white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: CustomDropDown(
                          list: [],
                          height: 32,
                          hint: "1,2 BHK",
                          width: 98,
                          dropdownColor: tabColor,
                          radius: 6,
                          iconSize: 12,
                        ),
                      ),
                      horizontalSpace(15),
                      CustomDropDown(
                        list: [],
                        height: 32,
                        hint: "Any Price",
                        width: 98,
                        dropdownColor: black.withOpacity(.08),
                        textStyle: bodyText12w500(darkGrey),
                        radius: 6,
                        iconSize: 12,
                      ),
                      horizontalSpace(15),
                      Container(
                        height: 32,
                        width: 98,
                        decoration: decoration(black.withOpacity(.08), 6),
                        child: Center(
                          child: Text(
                            "Owner",
                            style: bodyText12w500(black.withOpacity(.4)),
                          ),
                        ),
                      ),
                      horizontalSpace(15),
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Container(
                          height: 32,
                          width: 98,
                          decoration: decoration(black.withOpacity(.08), 6),
                          child: Center(
                            child: Text(
                              "Owner",
                              style: bodyText12w500(black.withOpacity(.4)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    verticalSpace(10),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
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
                                                Icons.favorite_outline,
                                                color: black.withOpacity(.4),
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
            ],
          ),
        ),
      ),
    );
  }
}
