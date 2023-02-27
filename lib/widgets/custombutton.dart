import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class CustomButton extends StatelessWidget {
  final Color buttonColor;
  final String title;
  final TextStyle? textStyle;
  final VoidCallback? onClick;
  final Color? borColor;
  final double? radius;
  final double? thickness;
  final double? butWidth;
  final double? butHeight;
  const CustomButton(
      {super.key,
      required this.buttonColor,
      required this.title,
      this.onClick,
      this.borColor,
      this.thickness,
      this.radius,
      this.butWidth,
      this.butHeight,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        width: butWidth ?? width(context),
        margin: EdgeInsets.only(bottom: 15),
        height: butHeight ?? 48,
        decoration: decoration(buttonColor, radius ?? 10,
            borColor: borColor, width: thickness),
        child: Center(
            child: Text(
          title,
          style: textStyle ?? bodyText14w500(white),
        )),
      ),
    );
  }
}
