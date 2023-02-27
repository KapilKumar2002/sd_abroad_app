import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/widgets/customdropdown.dart';
import 'package:sd_abroad_app/widgets/customtextfield.dart';

class Costumer_Service extends StatefulWidget {
  const Costumer_Service({super.key});

  @override
  State<Costumer_Service> createState() => _Costumer_ServiceState();
}

class _Costumer_ServiceState extends State<Costumer_Service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        backgroundColor: transparent,
        elevation: 0,
        title: Text(
          "Customer Service",
          style: bodyText16normal(black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            color: background,
            child: Column(
              children: [
                Image.asset("assets/images/hello.png"),
                Text(
                  "Hello, if you are facing any problems or\nneed any information, please fill out the\nform below and write your issues in the given box",
                  style: bodyText12normal(black.withOpacity(.6), height: 1.5),
                  textAlign: TextAlign.center,
                ),
                verticalSpace(15),
                CustomTextField(hint: "Full name"),
                verticalSpace(15),
                Row(
                  children: [
                    CustomDropDown(
                      dropdownColor: white,
                      list: [],
                      height: 44,
                      hint: "",
                      width: 60,
                      iconSize: 12,
                      radius: 6,
                      iconColor: black.withOpacity(.4),
                      hp: 2,
                    ),
                    Expanded(
                        child: CustomTextField(
                      hint: "",
                      prefix: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "+91",
                          style: bodyText14w500(black.withOpacity(.4)),
                        ),
                      ),
                    ))
                  ],
                ),
                verticalSpace(15),
                CustomTextField(hint: "Email address"),
                verticalSpace(20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 425,
                  decoration: decoration(white, 6),
                  child: TextFormField(
                    style: bodyText14w500(black.withOpacity(.4)),
                    minLines: 1,
                    maxLines: null,
                    decoration: InputDecoration(
                        hintText: "Anything else you,d like us to know?",
                        border: InputBorder.none),
                  ),
                ),
                verticalSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "2972 Westheimer Rd.\nSanta Ana. Illinois\n85486",
                      style: bodyText12w500(black.withOpacity(.5), height: 1.5),
                    ),
                    Text(
                      "(406) 555-0120\nSD.Abroad@example.com\nwww.SDAbroad.com",
                      style: bodyText12w500(black.withOpacity(.5), height: 1.5),
                    ),
                  ],
                ),
                verticalSpace(20),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              content: Container(
                                height: 320,
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/cspop.png"),
                                    verticalSpace(25),
                                    Text(
                                      "Thank you for your response",
                                      style: bodyText16Bold(primaryColor),
                                    ),
                                    verticalSpace(15),
                                    Text(
                                      "We'll contact you soon",
                                      style: bodyText14normal(black),
                                    )
                                  ],
                                ),
                              ),
                            ));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      height: 48,
                      width: width(context),
                      decoration: decoration(primaryColor, 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Submit",
                            style: bodyText14Bold(white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
