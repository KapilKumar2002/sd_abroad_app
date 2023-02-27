import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/widgets/step_1.dart';
import 'package:sd_abroad_app/widgets/step_2.dart';
import 'package:sd_abroad_app/widgets/step_3.dart';
import 'package:sd_abroad_app/widgets/step_4.dart';

class CountryGpa extends StatefulWidget {
  final int? step4;
  const CountryGpa({super.key, this.step4});

  @override
  State<CountryGpa> createState() => _CountryGpaState();
}

class _CountryGpaState extends State<CountryGpa> {
  int _activeCurrentStep = 0;
  List<Step> stepList() => [
        Step(
            state: _activeCurrentStep <= 0
                ? StepState.complete
                : StepState.complete,
            isActive: _activeCurrentStep >= 0,
            title: Text(""),
            label: Text("Step 1"),
            content: Step_1()),
        Step(
            state: _activeCurrentStep <= 1
                ? StepState.complete
                : StepState.complete,
            isActive: _activeCurrentStep >= 1,
            title: Text(""),
            label: Text("Step 2"),
            content: Step_2()),
        Step(
            state: StepState.complete,
            isActive: _activeCurrentStep >= 2,
            title: Text(""),
            label: Text("Step 3"),
            content: Step_3()),
        Step(
            state: StepState.complete,
            isActive: _activeCurrentStep >= 3,
            title: Text(""),
            label: Text("Step 4"),
            content: const Step_4())
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: black,
          backgroundColor: transparent,
          elevation: 0,
          title: Text(
            "GPA Calculator",
            style: bodyText24w500(black),
          )),
      body: SingleChildScrollView(
        child: Container(
          color: background,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Easy & Quick Conversion\nof Indian CGPA/\nPercentage to USA GPA",
                  style: bodyText24w500(primaryColor),
                ),
                verticalSpace(15),
                Text(
                  "Leading USA universities consider educational credentials in GPA to make admission decisions. Use our converter for a quick and hassle-free general assessment of your non-USA academic records. Our quality credential evaluation tool computes GPA while meeting the highest USA qualification standards.",
                  style: bodyText18w500(black, height: 2),
                ),
                verticalSpace(25),
                Container(
                  decoration: decoration(white, 6),
                  child: Column(
                    children: [
                      verticalSpace(20),
                      Text(
                        "Calculate your GPA",
                        style: bodyText20w500(black),
                      ),
                      Container(
                        height: _activeCurrentStep == 1
                            ? 900
                            : _activeCurrentStep == 2
                                ? 250
                                : _activeCurrentStep == 3
                                    ? 425
                                    : 860,
                        child: Stepper(
                          physics: NeverScrollableScrollPhysics(),
                          elevation: 0,
                          // margin: EdgeInsets.all(20),

                          controlsBuilder: (
                            BuildContext context,
                            ControlsDetails,
                          ) {
                            return SizedBox();
                          },
                          type: StepperType.horizontal,
                          currentStep: _activeCurrentStep,
                          steps: stepList(),

                          onStepContinue: () {
                            if (_activeCurrentStep < (stepList().length - 1)) {
                              setState(() {
                                _activeCurrentStep += 1;
                              });
                            }
                          },

                          onStepCancel: () {
                            if (_activeCurrentStep == 0) {
                              return;
                            }

                            setState(() {
                              _activeCurrentStep -= 1;
                            });
                          },

                          // onStepTap allows to directly click on the particular step we want
                          onStepTapped: (int index) {
                            setState(() {
                              _activeCurrentStep = index;
                            });
                          },
                        ),
                      ),
                      verticalSpace(30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: _activeCurrentStep > 0
                                  ? MainAxisAlignment.spaceBetween
                                  : MainAxisAlignment.start,
                              children: [
                                _activeCurrentStep > 0
                                    ? InkWell(
                                        onTap: () {
                                          setState(() {
                                            _activeCurrentStep =
                                                _activeCurrentStep - 1;
                                          });
                                        },
                                        child: Container(
                                          height: 42,
                                          width: 115,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.arrow_back_ios,
                                                color: primaryColor,
                                                size: 14,
                                              ),
                                              horizontalSpace(7),
                                              Text(
                                                "Back",
                                                style: bodyText16w500(
                                                    primaryColor),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    : horizontalSpace(0),
                                _activeCurrentStep < 2
                                    ? InkWell(
                                        onTap: () {
                                          if (_activeCurrentStep < 2) {
                                            setState(() {
                                              _activeCurrentStep =
                                                  _activeCurrentStep + 1;
                                            });
                                          }
                                        },
                                        child: Container(
                                          decoration:
                                              decoration(primaryColor, 21),
                                          height: 42,
                                          width: 115,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Next",
                                                style: bodyText16w500(white),
                                              ),
                                              horizontalSpace(7),
                                              Icon(
                                                Icons.arrow_forward_ios,
                                                color: white,
                                                size: 14,
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    : horizontalSpace(0),
                              ],
                            ),
                            verticalSpace(25),
                            Text(
                              "Note:",
                              style: bodyText18Bold(primaryColor),
                            ),
                            verticalSpace(14),
                            Text(
                              "Please follow the instructions carefully in each step. The accuracy of this calculation depends on the information you provide.",
                              style: bodyText18normal(black, height: 2),
                            ),
                            verticalSpace(15)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                verticalSpace(25),
                Text(
                  "Disclaimer :",
                  style: bodyText18Bold(primaryColor),
                ),
                verticalSpace(14),
                Text(
                  "The converted GPA is intended for informational purposes and must not be used for academic orvisa applications abroad. upGrad Abroad does not offer official credential evaluation services.",
                  style: bodyText18normal(black, height: 2.5),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
