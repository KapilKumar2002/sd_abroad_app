import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class EducationGuidance extends StatefulWidget {
  const EducationGuidance({super.key});

  @override
  State<EducationGuidance> createState() => _EducationGuidanceState();
}

class _EducationGuidanceState extends State<EducationGuidance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: black,
          backgroundColor: transparent,
          elevation: 0,
          title: Text(
            "Abroad Education Guidance",
            style: bodyText16normal(black),
          )),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            color: background,
            child: Column(children: [
              ListView.builder(
                itemCount: 8,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                      height: 180,
                      width: width(context),
                      margin: EdgeInsets.only(bottom: 15),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              "assets/images/aeg.png",
                              fit: BoxFit.fill,
                              height: 180,
                              width: width(context),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional.center,
                            child: Image.asset(
                              "assets/images/play.png",
                              height: 36,
                            ),
                          )
                        ],
                      ));
                },
              )
            ])),
      ),
    );
  }
}
