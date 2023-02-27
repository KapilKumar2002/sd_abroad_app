import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/mainscreens/contactus.dart';
import 'package:sd_abroad_app/views/mainscreens/gpacalculator.dart';
import 'package:sd_abroad_app/views/mainscreens/profile.dart';
import 'package:sd_abroad_app/views/mainscreens/referearn.dart';
import 'package:sd_abroad_app/views/mainscreens/reminders.dart';
import 'package:sd_abroad_app/views/university/bookmark.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          verticalSpace(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              onTap: () {
                nextScreen(context, ProfilePage());
              },
              child: Container(
                child: ListTile(
                  title: Text(
                    "Priyanka Sharma",
                    style: bodyText16w500(white),
                  ),
                  subtitle: Text(
                    "priyanka23@gmail.com",
                    style: bodyText10w500(white),
                  ),
                  leading: CircleAvatar(
                    radius: 22,
                    backgroundColor: white,
                    child: Text(
                      "A",
                      style: bodyText18w500(primaryColor),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                        colors: [primaryColor.withOpacity(.5), primaryColor])),
              ),
            ),
          ),
          verticalSpace(15),
          ListTile(
            onTap: () {
              nextScreen(context, ContactUs());
            },
            leading: ImageIcon(
              AssetImage("assets/images/coun.png"),
              size: 20,
              color: black,
            ),
            title: Text(
              "Talk to Counsellor",
              style: bodyText16normal(black),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.star,
              color: black,
            ),
            title: Text(
              "Rate Our App",
              style: bodyText16normal(black),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              color: black,
            ),
            title: Text(
              "Share the App",
              style: bodyText16normal(black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color: grey,
              thickness: 1.5,
            ),
          ),
          ListTile(
            leading: ImageIcon(
              AssetImage("assets/images/universe.png"),
              size: 20,
              color: black,
            ),
            title: Text(
              "Find University",
              style: bodyText16normal(black),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.home_filled,
              color: black,
            ),
            title: Text(
              "Find Accommodation",
              style: bodyText16normal(black),
            ),
          ),
          ListTile(
            onTap: () {
              nextScreen(context, Bookmark());
            },
            leading: Icon(
              Icons.bookmark,
              color: black,
            ),
            title: Text(
              "Bookmarks",
              style: bodyText16normal(black),
            ),
          ),
          ListTile(
            onTap: () {
              nextScreen(context, Reminders());
            },
            leading: Icon(
              Icons.notifications_active,
              color: black,
            ),
            title: Text(
              "Reminders",
              style: bodyText16normal(black),
            ),
          ),
          ListTile(
            onTap: () {
              nextScreen(context, GPACalculator());
            },
            leading: Icon(
              Icons.calculate,
              color: black,
            ),
            title: Text(
              "GPA Calculator",
              style: bodyText16normal(black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color: grey,
              thickness: 1.5,
            ),
          ),
          ListTile(
            title: Text(
              "SD Campus",
              style: bodyText16normal(black),
            ),
          ),
          ListTile(
            title: Text(
              "SD Publications",
              style: bodyText16normal(black),
            ),
          ),
          verticalSpace(height(context) * .05),
          InkWell(
            onTap: () {
              nextScreen(context, ReferEarn());
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: decoration(primaryColor, 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage("assets/images/gift.png"),
                    size: 20,
                    color: white,
                  ),
                  horizontalSpace(10),
                  Text(
                    "Refer a Friend",
                    style: bodyText16w500(white),
                  )
                ],
              ),
            ),
          ),
          verticalSpace(10),
          Center(
            child: Text(
              "App Version : 1.1",
              style: bodyText12w500(black.withOpacity(.25)),
            ),
          )
        ],
      ),
    );
  }
}
