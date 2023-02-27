import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: black,
          backgroundColor: transparent,
          elevation: 0,
          title: Text(
            "Profile",
            style: bodyText16normal(black),
          )),
      body: Container(
        color: background,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(colors: [
                          primaryColor.withOpacity(.5),
                          primaryColor
                        ])),
                    child: ListTile(
                      title: Text(
                        "Priyanka Sharma",
                        style: bodyText20w500(white),
                      ),
                      subtitle: Row(
                        children: [
                          Container(
                            width: 36,
                            height: 18,
                            decoration:
                                decoration(transparent, 9, borColor: white),
                            child: Center(
                              child: Text(
                                "Edit",
                                style: bodyText8w500(white),
                              ),
                            ),
                          )
                        ],
                      ),
                      leading: CircleAvatar(
                        backgroundColor: white,
                        radius: 27.5,
                        child: Text(
                          "P",
                          style: bodyText18w500(primaryColor),
                        ),
                      ),
                    )),
                verticalSpace(15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                  decoration: decoration(white, 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Account",
                        style: bodyText18w500(black),
                      ),
                      verticalSpace(15),
                      Row(
                        children: [
                          Container(
                            height: 18,
                            width: 18,
                            decoration: decoration(primaryColor, 5),
                            child: Icon(
                              Icons.email,
                              size: 12,
                              color: white,
                            ),
                          ),
                          horizontalSpace(12),
                          Text(
                            "priyanka23@gmail.com",
                            style: bodyText14w500(black.withOpacity(.6)),
                          ),
                          Expanded(child: Container()),
                          Icon(
                            Icons.edit_outlined,
                            size: 15,
                          )
                        ],
                      ),
                      verticalSpace(18),
                      Row(
                        children: [
                          Container(
                            height: 18,
                            width: 18,
                            decoration: decoration(primaryColor, 5),
                            child: Icon(
                              Icons.call,
                              size: 12,
                              color: white,
                            ),
                          ),
                          horizontalSpace(12),
                          Text(
                            "9131266409",
                            style: bodyText14w500(black.withOpacity(.6)),
                          ),
                          Expanded(child: Container()),
                          Icon(
                            Icons.edit_outlined,
                            size: 15,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // verticalSpace(height(context) * 0.52),
            Container(
              width: width(context),
              decoration: decoration(white, 12),
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Center(
                child: Text(
                  "Logout",
                  style: bodyText24w500(red),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
