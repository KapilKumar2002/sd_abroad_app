import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/auth/login.dart';
import 'package:sd_abroad_app/widgets/custombutton.dart';
import 'package:sd_abroad_app/widgets/customtextfield.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                    InkWell(
                      onTap: () {
                        nextScreen(context, LogIn());
                      },
                      child: Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          "Login",
                          style: bodyText14w500(primaryColor,
                              decoration: TextDecoration.underline),
                        ),
                      ),
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
                        "Create an account",
                        style: bodyText24w500(black),
                      ),
                    ),
                    verticalSpace(30),
                    Text(
                      "Name",
                      style: bodyText16w500(primaryColor),
                    ),
                    verticalSpace(10),
                    CustomTextField(
                      style: bodyText16normal(primaryColor),
                      hint: "kapil",
                      height: 48,
                    ),
                    verticalSpace(10),
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
                    verticalSpace(10),
                    Text(
                      "Phone Number",
                      style: bodyText16w500(primaryColor),
                    ),
                    verticalSpace(10),
                    CustomTextField(
                      style: bodyText16normal(primaryColor),
                      hint: "+91 838 828 32 35",
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
                    verticalSpace(5),
                    Text(
                      "9+ characters, Use special symbols, Upper case latters etc",
                      style: bodyText10normal(Color(0xFF0072B4)),
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
