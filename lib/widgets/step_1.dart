import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/widgets/custombutton.dart';

class Step_1 extends StatefulWidget {
  const Step_1({super.key});

  @override
  State<Step_1> createState() => _Step_1State();
}

enum option { first, second, third, forth, fifth, sixth }

class _Step_1State extends State<Step_1> {
  // List list= []
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select degree level for which you are\nconverting Indian marks to USA GPA",
            style: bodyText12w500(black),
          ),
          verticalSpace(20),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: decoration(transparent, 22,
                      borColor: black.withOpacity(.6)),
                  child: Center(
                    child: Text(
                      "Bachelor’s",
                      style: bodyText14w500(black.withOpacity(.6)),
                    ),
                  ),
                ),
              ),
              horizontalSpace(25),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: decoration(transparent, 22,
                      borColor: black.withOpacity(.6)),
                  child: Center(
                    child: Text(
                      "Master's",
                      style: bodyText14w500(black.withOpacity(.6)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(20),
          TextField(
            decoration: InputDecoration(
                hintStyle: bodyText14w500(black.withOpacity(.6)),
                enabledBorder: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: "Select",
                label: Text(
                  "Duration of Degree",
                  style: bodyText14w500(black.withOpacity(.6)),
                )),
          ),
          verticalSpace(20),
          TextField(
            decoration: InputDecoration(
                hintStyle: bodyText14w500(black.withOpacity(.6)),
                enabledBorder: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                hintText: "University Name",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                label: Text(
                  "University Name",
                  style: bodyText14w500(black.withOpacity(.6)),
                )),
          ),
          verticalSpace(20),
          TextField(
            decoration: InputDecoration(
                hintStyle: bodyText14w500(black.withOpacity(.6)),
                enabledBorder: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                hintText: "College/Institution name",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                label: Text(
                  "College/Institution name",
                  style: bodyText14w500(black.withOpacity(.6)),
                )),
          ),
          verticalSpace(25),
          Text(
            "Select Appropriate\nGrading Scale",
            style: bodyText20w500(black),
          ),
          verticalSpace(15),
          RadioListTile(
            value: option.first,
            contentPadding: EdgeInsets.zero,
            groupValue: option,
            onChanged: (ValueKey) {},
            title: Text(
              "0 - 100 % ( 33% passing marks )",
              style: bodyText14w400(black),
            ),
          ),
          RadioListTile(
            value: option.second,
            contentPadding: EdgeInsets.zero,
            groupValue: option,
            onChanged: (ValueKey) {},
            title: Text(
              "0 - 100 % ( 50% passing marks )",
              style: bodyText14w400(black),
            ),
          ),
          RadioListTile(
            value: option.third,
            contentPadding: EdgeInsets.zero,
            groupValue: option,
            onChanged: (ValueKey) {},
            title: Text(
              "0 - 100 % ( 40% passing marks )",
              style: bodyText14w400(black),
            ),
          ),
          RadioListTile(
            value: option,
            contentPadding: EdgeInsets.zero,
            groupValue: option.forth,
            onChanged: (ValueKey) {},
            title: Text(
              "0 - 10 (4 Passing CGPA)",
              style: bodyText14w400(black),
            ),
          ),
          RadioListTile(
            value: option.fifth,
            contentPadding: EdgeInsets.zero,
            groupValue: option,
            onChanged: (ValueKey) {},
            title: Text(
              "0 - 10 (5 Passing CGPA)",
              style: bodyText14w400(black),
            ),
          ),
          RadioListTile(
            value: option.sixth,
            contentPadding: EdgeInsets.zero,
            groupValue: option,
            onChanged: (ValueKey) {},
            title: Text(
              "0 - 10 (2 Passing CGPA)",
              style: bodyText14w400(black),
            ),
          ),
        ],
      ),
    );
  }
}
