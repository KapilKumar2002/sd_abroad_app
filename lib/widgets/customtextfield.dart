import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final Widget? prefix;
  final double? height;
  final Color? fillColor;
  final Color? borColor;
  final Widget? sufffix;
  final TextStyle? style;
  final bool? obscureText;
  final double? radius;
  final double? tfwidth;
  const CustomTextField(
      {super.key,
      this.hint,
      this.prefix,
      this.height,
      this.fillColor,
      this.style,
      this.tfwidth,
      this.sufffix,
      this.obscureText,
      this.borColor,
      this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 44,
      width: tfwidth ?? width(context),
      child: TextFormField(
        obscureText: obscureText ?? false,
        obscuringCharacter: "*",
        cursorColor: primaryColor,
        style: style ?? bodyText12w500(black),
        decoration: InputDecoration(
            filled: true,
            fillColor: fillColor ?? white,
            prefixIcon: prefix,
            suffixIcon: sufffix,
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borColor ?? black.withOpacity(.2)),
              borderRadius: BorderRadius.circular(6),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: borColor ?? black.withOpacity(.2)),
                borderRadius: BorderRadius.circular(radius ?? 6)),
            hintText: hint,
            border: InputBorder.none),
      ),
    );
  }
}
