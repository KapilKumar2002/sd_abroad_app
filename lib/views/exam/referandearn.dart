import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/widgets/customtextfield.dart';

class ReferAndEarn extends StatefulWidget {
  const ReferAndEarn({super.key});

  @override
  State<ReferAndEarn> createState() => _ReferAndEarnState();
}

class _ReferAndEarnState extends State<ReferAndEarn> {
  List dropList = [
    {
      "title": "How many students can i refer?",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas."
    },
    {
      "title": "Is there any upper limit on the reward money that I can earn?",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas."
    },
    {
      "title": "Should I be enrolled with Leverage Edu to refer a student?",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas."
    },
    {
      "title": "What is deposit payment?",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas."
    },
    {
      "title":
          "What happens if the student referred by me is rejected by the university?",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas."
    },
  ];
  int drop = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Refer and Earn',
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: background,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Earn upto 20k per referral',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(children: [
                      CustomTextField(
                        hint: "Full name",
                      ),
                      verticalSpace(15),
                      CustomTextField(
                        hint: "+91",
                      ),
                      verticalSpace(15),
                      CustomTextField(
                        hint: "Email address",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          primary: primaryColor,
                          minimumSize:
                              Size(MediaQuery.of(context).size.width, 44),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Submit Referral',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Note: ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black.withOpacity(0.5)),
                    children: const <TextSpan>[
                      TextSpan(
                        text:
                            ' Please make sure you complete signupor login before you leave this page to get ref-erral bonus.',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    text:
                        '*To refer multiple people, log in with your le-verage Edu Account',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'How does it work',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 7),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Step ${index + 1}',
                                style: bodyText12w500(black),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Create an account on leverageedu.com or, login via your existing Leverage Edu account.',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black.withOpacity(0.5)),
                              )
                            ]),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffCDD3F7),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Note',
                            style: TextStyle(
                                color: Color(0xFF5F71E4),
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                Text(
                                  '• If the referred students is already registered with us, he/she will not be considered as a referral.',
                                  style: TextStyle(
                                      color: Color(0xFF5F71E4), fontSize: 10),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '• The student’s phone number will be used as a unique identifier for processing referrals.',
                                  style: TextStyle(
                                      color: Color(0xFF5F71E4), fontSize: 10),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '• We will not be share details regarding student’s study preferences or any other academic/personal information.',
                                  style: TextStyle(
                                      color: Color(0xFF5F71E4), fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
                verticalSpace(35),
                Text(
                  "FAQs",
                  style: bodyText16Bold(black),
                ),
                verticalSpace(15),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: dropList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Container(
                        decoration: decoration(white, 6),
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    dropList[index]['title'],
                                    style: bodyText14w500(black,
                                        overflow: TextOverflow.visible),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      drop == index ? drop = -1 : drop = index;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Container(
                                      height: 16,
                                      decoration: decoration(tabColor, 4),
                                      width: 16,
                                      child: Center(
                                        child: Icon(
                                          drop == index
                                              ? CupertinoIcons.chevron_up
                                              : CupertinoIcons.chevron_down,
                                          size: 12,
                                        ),
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
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum rutrum eget in at congue vitae. At neque, consequat tempor vitae. Nunc, metus, a, et bibendum. Consectetur donec venenatis quis interdum tempus dolor lorem nam maecenas.",
                                      style:
                                          bodyText12normal(black, height: 1.25),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
