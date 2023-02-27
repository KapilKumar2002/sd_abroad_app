import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/widgets/custombutton.dart';
import 'package:sd_abroad_app/widgets/customtextfield.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  String text = "Submit";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: black,
          backgroundColor: transparent,
          elevation: 0,
          title: Text(
            "Contact Us",
            style: bodyText24w500(black),
          )),
      body: SingleChildScrollView(
        child: Container(
            color: background,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                verticalSpace(20),
                Container(
                  decoration: decoration(white, 12),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Talk to our Counsellor",
                        style: bodyText20w500(primaryColor),
                      ),
                      verticalSpace(12),
                      Text(
                        "Have questions about courses, fees, accommodations, Fees, exams etc? Feel free to contact us",
                        style: bodyText14normal(black),
                      )
                    ],
                  ),
                ),
                verticalSpace(20),
                Container(
                  decoration: decoration(white, 12),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "First Name",
                        style: bodyText14w500(black),
                      ),
                      verticalSpace(10),
                      CustomTextField(
                        hint: "First Name",
                      ),
                      verticalSpace(10),
                      Text(
                        "Last Name",
                        style: bodyText14w500(black),
                      ),
                      verticalSpace(10),
                      CustomTextField(
                        hint: "Last Name",
                      ),
                      verticalSpace(10),
                      Text(
                        "Email Address",
                        style: bodyText14w500(black),
                      ),
                      verticalSpace(10),
                      CustomTextField(
                        hint: "abc@gmail.com",
                      ),
                      verticalSpace(10),
                      Text(
                        "Phone Number",
                        style: bodyText14w500(black),
                      ),
                      verticalSpace(10),
                      CustomTextField(
                        hint: "+91 823 823 38 69",
                      ),
                      verticalSpace(15),
                      Text(
                        "*Our executive will soon contact you.",
                        style: bodyText12w500(black),
                      ),
                    ],
                  ),
                ),
                verticalSpace(height(context) * .175),
                CustomButton(
                  onClick: () {
                    setState(() {
                      text = "Submitted!!";
                    });
                  },
                  buttonColor: primaryColor,
                  title: text,
                  textStyle: bodyText18w500(white),
                ),
                verticalSpace(25),
              ],
            )),
      ),
    );
  }
}
