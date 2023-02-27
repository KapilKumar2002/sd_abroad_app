import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/auth/login.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Color bColor = primaryColor;
  String image = "assets/images/plogo.png";
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 4), () {
      setState(() {
        bColor = black;
        image = "assets/images/ylogo.png";
      });
      Timer(Duration(seconds: 4), () => nextScreen(context, LogIn()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bColor,
      body: Container(
        height: height(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            verticalSpace(20),
            Align(
              alignment: AlignmentDirectional.center,
              child: Image.asset(
                image,
                height: 130,
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 75),
                child: Text(
                  "Loading",
                  style: bodyText14normal(white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
