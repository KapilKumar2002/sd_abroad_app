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
  GlobalKey<ScaffoldState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      endDrawer: Container(
        width: width(context) * .5,
        height: height(context),
        color: white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(40),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/filter.png",
                      height: 20,
                    ),
                    horizontalSpace(10),
                    Text(
                      "Filters",
                      style: bodyText18Bold(primaryColor),
                    )
                  ],
                ),
              ),
              verticalSpace(15),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Select Country",
                  style: bodyText14w500(black),
                ),
              ),
              ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text(
                        "UK",
                        style: bodyText12w500(black),
                      ),
                    ],
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Select Course",
                  style: bodyText14w500(black),
                ),
              ),
              ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text(
                        "B.TECH",
                        style: bodyText12w500(black),
                      ),
                    ],
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Select Language",
                  style: bodyText14w500(black),
                ),
              ),
              ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text(
                        "English",
                        style: bodyText12w500(black),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
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
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
            child: Container(
              decoration: decoration(tabColor, 6),
              child: IconButton(
                  onPressed: () {
                    key.currentState!.openEndDrawer();
                  },
                  icon: ImageIcon(
                    AssetImage("assets/images/filter.png"),
                    color: primaryColor,
                  )),
            ),
          )
        ],
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
