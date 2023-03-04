import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/university/emptybookmark.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({super.key});

  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: black,
          backgroundColor: transparent,
          elevation: 0,
          title: Text(
            "Bookmarks",
            style: bodyText16normal(black),
          )),
      body: Container(
        color: background,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                nextScreen(context, EmptyBookmark());
              },
              child: Container(
                  decoration: decoration(white, 12),
                  height: 84,
                  child: Stack(
                    children: [
                      ListTile(
                        leading: Image.asset("assets/images/university.png"),
                        title: Text(
                          "Universities (3)",
                          style: bodyText16w500(black),
                        ),
                        subtitle: Text(
                          "Find all your bookmarked Universities",
                          style: bodyText10w500(black.withOpacity(.5)),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                              color: tabColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                              )),
                        ),
                      )
                    ],
                  )),
            ),
            verticalSpace(18),
            InkWell(
              onTap: () {
                nextScreen(context, EmptyBookmark());
              },
              child: Container(
                  decoration: decoration(white, 12),
                  height: 84,
                  child: Stack(
                    children: [
                      ListTile(
                        leading: Image.asset("assets/images/course.png"),
                        title: Text(
                          "Universities (3)",
                          style: bodyText16w500(black),
                        ),
                        subtitle: Text(
                          "Find all your bookmarked Universities",
                          style: bodyText10w500(black.withOpacity(.5)),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                              color: tabColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                              )),
                        ),
                      )
                    ],
                  )),
            ),
            verticalSpace(18),
            InkWell(
              onTap: () {
                nextScreen(context, EmptyBookmark());
              },
              child: Container(
                  decoration: decoration(white, 12),
                  height: 84,
                  child: Stack(
                    children: [
                      ListTile(
                        leading: Image.asset("assets/images/acco.png"),
                        title: Text(
                          "Universities (3)",
                          style: bodyText16w500(black),
                        ),
                        subtitle: Text(
                          "Find all your bookmarked Universities",
                          style: bodyText10w500(black.withOpacity(.5)),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                              color: tabColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                              )),
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
