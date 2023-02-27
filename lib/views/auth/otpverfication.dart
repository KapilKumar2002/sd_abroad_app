import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/auth/login.dart';
import 'package:sd_abroad_app/views/auth/signup.dart';
import 'package:sd_abroad_app/widgets/custombutton.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  String? otp;
  final TextEditingController _pinPutController = TextEditingController();
  final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      padding: EdgeInsets.all(8),
      textStyle: bodyText24w500(black),
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: black))));
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
                  children: [
                    Text(
                      "Enter OTP",
                      style: bodyText18w500(black),
                    ),
                    verticalSpace(60),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Pinput(
                        length: 4,
                        defaultPinTheme: defaultPinTheme,
                        controller: _pinPutController,
                        pinAnimationType: PinAnimationType.fade,
                        onChanged: (value) {
                          setState(() {
                            otp = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                CustomButton(
                  onClick: () {
                    nextScreen(context, LogIn());
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
