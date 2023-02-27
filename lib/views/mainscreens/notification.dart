import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: black,
          backgroundColor: transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 15),
              child: Text(
                "Read all",
                style: bodyText14w500(primaryColor),
              ),
            )
          ],
          elevation: 0,
          title: Text(
            "Notification",
            style: bodyText24w500(black),
          )),
      body: Container(
        color: background,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 14),
                  decoration: decoration(white, 12),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
                        style: bodyText12w500(black),
                      ),
                      verticalSpace(6),
                      Text(
                        "2 Mins Ago",
                        style: bodyText10w500(primaryColor),
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
