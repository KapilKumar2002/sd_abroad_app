import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/auth/otpverfication.dart';
import 'package:sd_abroad_app/views/auth/signup.dart';
import 'package:sd_abroad_app/widgets/custombutton.dart';
import 'package:sd_abroad_app/widgets/customtextfield.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
                    verticalSpace(35),
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
                        "Forgot Password",
                        style: bodyText24w500(black),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                  ],
                ),
                CustomButton(
                  onClick: () {
                    nextScreen(context, OtpVerification());
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
