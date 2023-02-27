import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/widgets/custombutton.dart';
import 'package:sd_abroad_app/widgets/customtextfield.dart';

class ReferEarn extends StatefulWidget {
  const ReferEarn({super.key});

  @override
  State<ReferEarn> createState() => _ReferEarnState();
}

class _ReferEarnState extends State<ReferEarn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Image.asset(
                "assets/images/refer.png",
                height: 222,
              ),
              verticalSpace(15),
              Center(
                child: Text(
                  "Refer to your friend\nand get a credits\ninstantly!",
                  style: bodyText20w500(black),
                  textAlign: TextAlign.center,
                ),
              ),
              verticalSpace(40),
              DottedBorder(
                dashPattern: [10, 10],
                color: primaryColor,
                child: Container(
                  decoration: decoration(transparent, 8),
                  width: 150,
                  height: 50,
                  child: CustomTextField(
                    borColor: transparent,
                    height: 50,
                    style: bodyText18w500(primaryColor),
                    hint: "ABCXYZ",
                    sufffix: Icon(
                      Icons.copy,
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              verticalSpace(150),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomButton(
                  buttonColor: primaryColor,
                  title: "Refer Now",
                  textStyle: bodyText14w500(white),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
