import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/mainscreens/countrygpa.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class GPACalculator extends StatefulWidget {
  const GPACalculator({super.key});

  @override
  State<GPACalculator> createState() => _GPACalculatorState();
}

class _GPACalculatorState extends State<GPACalculator> {
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
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wondering what your chances of admission into the top international universities are? Input your percentage/CGPA to estimate GPA meeting country-specific educational requirements.",
                  style: bodyText18w500(black, height: 2.5),
                ),
                verticalSpace(20),
                Text(
                  "Select the country for\nwhich you want GPA to\nwork...",
                  style: bodyText24w500(primaryColor),
                ),
                verticalSpace(25),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: width(context) * .25 / 120,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        nextScreen(context, CountryGpa());
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              width: width(context) * .4,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 45),
                              decoration: decoration(white, 12),
                              child: Image.asset(
                                "assets/images/busa.png",
                                height: 60,
                                width: 112,
                              ),
                            ),
                            verticalSpace(15),
                            Text(
                              "USA",
                              style: bodyText20w500(black),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                Container(
                  decoration: decoration(white, 12),
                  width: width(context) * .4,
                  height: width(context) * .4,
                  child: Center(
                      child: Text(
                    "Other",
                    style: bodyText20w500(black),
                  )),
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
