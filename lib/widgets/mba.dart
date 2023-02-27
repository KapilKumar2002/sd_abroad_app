import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class MBA extends StatefulWidget {
  const MBA({super.key});

  @override
  State<MBA> createState() => _MBAState();
}

class _MBAState extends State<MBA> {
  int drop = -1;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Container(
            decoration: decoration(white, 6),
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "How to Apply",
                      style: bodyText14w500(black),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          drop == index ? drop = -1 : drop = index;
                        });
                      },
                      child: Container(
                        height: 16,
                        decoration: decoration(tabColor, 4),
                        width: 16,
                        child: Center(
                          child: Icon(
                            CupertinoIcons.chevron_down,
                            size: 12,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                drop == index
                    ? Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "All UG Applications are submitted through UCAS.",
                          style: bodyText12normal(black.withOpacity(.5)),
                        ),
                      )
                    : Container(
                        height: 0,
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
