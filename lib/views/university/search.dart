import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/university/searcheduniversity.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
          decoration: InputDecoration(
              prefixIcon: Image.asset("assets/images/search.png"),
              border: InputBorder.none,
              hintText: "Search",
              hintStyle: bodyText12Bold(black.withOpacity(.4))),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(25),
            Text(
              "Previously Searched",
              style: bodyText10normal(black.withOpacity(.4)),
            ),
            verticalSpace(15),
            InkWell(
              onTap: () {
                return nextScreen(context, SearchedUniversity());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/timer.png",
                        height: 12,
                      ),
                      horizontalSpace(5),
                      Text(
                        "Imperial College Londoan",
                        style: bodyText12w500(black),
                      ),
                    ],
                  ),
                  Text(
                    "University",
                    style: bodyText12w500(black.withOpacity(.4)),
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
