import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/auth/forgotpassword.dart';
import 'package:sd_abroad_app/views/auth/signup.dart';
import 'package:sd_abroad_app/views/mainscreens/bottomnav.dart';
import 'package:sd_abroad_app/widgets/custombutton.dart';
import 'package:sd_abroad_app/widgets/customtextfield.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height(context),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpace(height(context) * 0.07),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sign Up Later",
                          style: bodyText16w500(darkGrey),
                        ),
                        InkWell(
                          onTap: () {
                            nextScreen(context, SignUp());
                          },
                          child: Text(
                            "Create an account",
                            style: bodyText14w500(primaryColor,
                                decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    ),
                    verticalSpace(50),
                    Center(
                      child: Text(
                        "SD Abroad",
                        style: bodyText36w400(primaryColor),
                      ),
                    ),
                    verticalSpace(20),
                    Center(
                      child: Text(
                        "Login into your account",
                        style: bodyText24w500(black),
                      ),
                    ),
                    verticalSpace(50),
                    Text(
                      "Email Address",
                      style: bodyText16w500(primaryColor),
                    ),
                    verticalSpace(10),
                    CustomTextField(
                      style: bodyText16normal(primaryColor),
                      hint: "kapil@gmail.com",
                      height: 48,
                    ),
                    verticalSpace(12),
                    Text(
                      "Password",
                      style: bodyText16w500(primaryColor),
                    ),
                    verticalSpace(10),
                    CustomTextField(
                      style: bodyText16normal(primaryColor),
                      hint: "**********",
                      height: 48,
                      obscureText: true,
                      sufffix: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: black,
                          )),
                    ),
                    verticalSpace(10),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: InkWell(
                        onTap: () {
                          nextScreen(context, ForgotPassword());
                        },
                        child: Text(
                          "Forgot Password",
                          style: bodyText12w500(black),
                        ),
                      ),
                    ),
                    verticalSpace(10),
                    Center(
                        child: Text(
                      "or",
                      style: bodyText16w500(black),
                    )),
                    verticalSpace(25),
                    Center(
                      child: Container(
                        height: 48,
                        width: 222,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/images/fac.png"),
                            Image.asset("assets/images/goog.png"),
                            Image.asset("assets/images/ap.png"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                CustomButton(
                  onClick: () {
                    nextScreen(context, MyBottomBar());
                  },
                  buttonColor: primaryColor,
                  title: "Continue",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
