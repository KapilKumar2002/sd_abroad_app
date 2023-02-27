import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/exam/events.dart';
import 'package:sd_abroad_app/views/exam/eventsfullview.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class ArticleFullViewPage extends StatefulWidget {
  const ArticleFullViewPage({super.key});

  @override
  State<ArticleFullViewPage> createState() => _ArticleFullViewPageState();
}

class _ArticleFullViewPageState extends State<ArticleFullViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Career as project engineer',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: background,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Career as a project engineer',
                  style: TextStyle(
                      color: Color(0xff5F71E4),
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Nikita puri',
                      style: TextStyle(
                          color: Color(0xff5F71E4),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    horizontalSpace(10),
                    Image.asset(
                      'assets/images/tick icon.png',
                      height: 18,
                      width: 18,
                    ),
                    horizontalSpace(30),
                    Row(
                      children: [
                        Text(
                          'Updated on Dec 19,2022',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/timer.png',
                          height: 14,
                          width: 14,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            '4 minute read',
                            style: TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/graph.png',
                            height: 14,
                            width: 14,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              '3.3K views',
                              style: TextStyle(fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration:
                      decoration(white, 12, borColor: grey.withOpacity(.5)),
                  child: Image.asset(
                    'assets/images/bimage.png',
                    width: width(context),
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'The main goal of a resume is to get the right attention of hiring managers and get you the opportunity of the interview you want and eventually lead you to the job of your dreams. To have the perfect Production Engineer resume you need to make sure that you highlight your qualification, your organisational skills and the many achievements you have been rewarded with. If you are confused as to how to go about making your production engineer resume perfect, read on!',
                  style: bodyText16normal(black, height: 1.5),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                  style: bodyText16normal(black, height: 1.5),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                  style: bodyText16normal(black, height: 1.5),
                ),
                SizedBox(
                  height: 30,
                ),
                Text('You may also like', style: bodyText26w500(black)),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: width(context),
                  decoration:
                      decoration(white, 12, borColor: grey.withOpacity(.5)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12)),
                          child: Image.asset(
                            'assets/images/y1.png',
                            height: 200,
                            width: width(context),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Engineering technology',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              ReadMoreText(
                                'Ever thought about how technology has revolutionized the world and who are its real progenitors? From the manufacturing of mini microphones, and smartphones to.Ever thought about how technology has revolutionized the world and who are its real progenitors? From the manufacturing of mini microphones, and smartphones to.',
                                trimLines: 4,
                                style: bodyText14normal(black, height: 1.5),
                                lessStyle: bodyText14Bold(primaryColor),
                                trimMode: TrimMode.Line,
                                trimCollapsedText: 'Readmore',
                                trimExpandedText: 'Showless',
                                moreStyle: bodyText14Bold(primaryColor),
                              ),
                              verticalSpace(10),
                            ],
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: width(context),
                  decoration:
                      decoration(white, 12, borColor: grey.withOpacity(.5)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12)),
                          child: Image.asset(
                            'assets/images/y2.png',
                            height: 200,
                            width: width(context),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Career in piping engineering',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              ReadMoreText(
                                'Have you ever given a thought on how we import precious natural resources like oil and gas into our country? You ever come across sky-scrapingbuildings and then you. Have you ever given a thought on how we import precious natural resources like oil and gas into our country? You ever come across sky-scrapingbuildings and then you.',
                                trimLines: 4,
                                style: bodyText14normal(black, height: 1.5),
                                lessStyle: bodyText14Bold(primaryColor),
                                trimMode: TrimMode.Line,
                                trimCollapsedText: 'Readmore',
                                trimExpandedText: 'Showless',
                                moreStyle: bodyText14Bold(primaryColor),
                              ),
                              verticalSpace(10),
                            ],
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Recommended posts',
                  style: bodyText26w500(black),
                ),
                SizedBox(
                  height: 30,
                ),
                ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              nextScreen(context, EventScreen());
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      'assets/images/rec1.png',
                                      width: width(context) * .35,
                                    ))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Brunel university',
                                  style: bodyText14Bold(black),
                                ),
                                verticalSpace(4),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Team Leverage Edu',
                                      style: bodyText12Bold(primaryColor),
                                    ),
                                    horizontalSpace(2),
                                    Image.asset(
                                      'assets/images/tick icon.png',
                                      height: 12,
                                      width: 12,
                                    )
                                  ],
                                ),
                                Text(
                                  'Updated on Dec 19,2022',
                                  style: bodyText10w500(black),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
