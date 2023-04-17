import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/widgets/custombutton.dart';
import 'package:sd_abroad_app/widgets/customtextfield.dart';

class Step_2 extends StatefulWidget {
  const Step_2({super.key});

  @override
  State<Step_2> createState() => _Step_2State();
}

class _Step_2State extends State<Step_2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 46,
                  color: primaryColor,
                  child: Center(
                    child: Text(
                      "Bachelor's",
                      style: bodyText14w500(white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 46,
                  color: black.withOpacity(.15),
                  child: Center(
                    child: Text(
                      "Subject Wise",
                      style: bodyText14w500(white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        verticalSpace(25),
        Text(
          "Calculate & enter the aggregate percentage/ cgpa and backlogs from your marksheet for a semester",
          style: bodyText12w500(black, height: 2),
        ),
        verticalSpace(30),
        Text(
          'Click the "Add Semester" button to enter another Semester. Please make sure to include the grades/marks listed on your marksheet to get an accurate GPA estimate.',
          style: bodyText12w500(black, height: 2),
        ),
        verticalSpace(30),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            decoration: decoration(white, 12, borColor: grey.withOpacity(.8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 58,
                  color: primaryColor,
                  child: Row(
                    children: [
                      horizontalSpace(15),
                      Container(
                        width: 90,
                        child: Text(
                          "Semesters",
                          style: bodyText14w500(white),
                        ),
                      ),
                      horizontalSpace(14),
                      Text(
                        "Number of Backlog",
                        style: bodyText14w500(white),
                      ),
                    ],
                  ),
                ),
                verticalSpace(7),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomTextField(
                            hint: "1st Sem",
                            tfwidth: 90,
                          ),
                          horizontalSpace(14),
                          Expanded(
                            child: CustomTextField(
                              hint: "1st Sem",
                            ),
                          ),
                        ],
                      ),
                      verticalSpace(10),
                      Row(
                        children: [
                          CustomButton(
                            borColor: grey,
                            buttonColor: grey.withOpacity(.5),
                            title: "|",
                            textStyle: bodyText14w500(black),
                            butWidth: 90,
                          ),
                          horizontalSpace(14),
                          Expanded(
                            child: CustomButton(
                              borColor: grey,
                              buttonColor: grey.withOpacity(.5),
                              title: "|",
                              textStyle: bodyText14w500(black),
                            ),
                          ),
                        ],
                      ),
                      verticalSpace(25),
                      CustomButton(
                        butWidth: 162,
                        buttonColor: transparent,
                        title: "ADD SEMESTERS",
                        borColor: primaryColor,
                        radius: 6,
                        butHeight: 42,
                        thickness: 2,
                        textStyle: bodyText14w500(primaryColor),
                      ),
                    ],
                  ),
                ),
                verticalSpace(15),
                Container(
                  width: width(context),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Aggregate Percentage",
                        style: bodyText14w500(white),
                      ),
                    ),
                  ),
                  height: 58,
                  color: primaryColor,
                ),
                verticalSpace(10),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      CustomTextField(
                        tfwidth: 140,
                      ),
                      verticalSpace(20),
                      CustomButton(
                        butWidth: 140,
                        borColor: grey,
                        buttonColor: grey.withOpacity(.5),
                        title: "|",
                        textStyle: bodyText14w500(black),
                      ),
                    ],
                  ),
                ),
                verticalSpace(20)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
