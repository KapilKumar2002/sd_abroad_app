import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class UniversitiesTab extends StatefulWidget {
  const UniversitiesTab({super.key});

  @override
  State<UniversitiesTab> createState() => _UniversitiesTabState();
}

class _UniversitiesTabState extends State<UniversitiesTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: decoration(white, 6),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/manche.png",
                  width: 48,
                  height: 58,
                  fit: BoxFit.fill,
                ),
                horizontalSpace(12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The University of Manchester",
                        style: bodyText12Bold(black),
                      ),
                      verticalSpace(10),
                      Text(
                        "Manchester, United Kingdom",
                        style: bodyText10w500(black.withOpacity(.5)),
                      ),
                      verticalSpace(10),
                      Text(
                        "Public | Estd. 1965 | 336 Courses",
                        style: bodyText10w500(black),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.chevron_right)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
