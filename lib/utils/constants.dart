import 'package:flutter/material.dart';

Color black = Color(0xff000000);
Color btabColor = Color(0xff23004C);
Color grey = Color(0xFFcacccb);
Color red = Color(0xFFEA4335);
Color darkGrey = black.withOpacity(.4);
Color white = Colors.white;
Color background = Color(0xFFEFF1FC);
Color primaryColor = Color(0xFF5F71E4);
Color violet = Color(0xFF434085);
Color green = Color(0xFF32CD32);
Color tabColor = Color(0xFFCDD3F7);

Color transparent = Colors.transparent;

TextStyle bodyText24w500(Color color) {
  return TextStyle(fontWeight: FontWeight.w500, fontSize: 24, color: color);
}

TextStyle bodyText24w300(Color color) {
  return TextStyle(fontWeight: FontWeight.w300, fontSize: 24, color: color);
}

TextStyle bodyText20w500(Color color) {
  return TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: color);
}

TextStyle bodyText20wBold(Color color) {
  return TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: color);
}

TextStyle bodyText12Bold(Color color, {double? height}) {
  return TextStyle(
      fontWeight: FontWeight.bold, fontSize: 12, color: color, height: height);
}

TextStyle bodyText22Bold(Color color, {double? height}) {
  return TextStyle(
      fontWeight: FontWeight.bold, fontSize: 22, color: color, height: height);
}

TextStyle bodyText32Bold(Color color, {double? height}) {
  return TextStyle(
      fontWeight: FontWeight.bold, fontSize: 32, color: color, height: height);
}

TextStyle bodyText36w400(Color color, {double? height}) {
  return TextStyle(
      fontWeight: FontWeight.bold, fontSize: 36, color: color, height: height);
}

TextStyle bodyText12w500(Color color,
    {double? height, TextDecoration? decoration}) {
  return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: color,
      height: height,
      decoration: decoration);
}

TextStyle bodyText12w400(Color color, {double? height}) {
  return TextStyle(
      fontWeight: FontWeight.w400, fontSize: 12, color: color, height: height);
}

TextStyle bodyText10w400(Color color, {double? height}) {
  return TextStyle(
      fontWeight: FontWeight.w400, fontSize: 10, color: color, height: height);
}

TextStyle bodyText14w400(Color color, {double? height}) {
  return TextStyle(
      fontWeight: FontWeight.w400, fontSize: 14, color: color, height: height);
}

TextStyle bodyText10normal(Color color, {double? height}) {
  return TextStyle(fontSize: 10, color: color, height: height);
}

TextStyle bodyText8normal(Color color) {
  return TextStyle(fontSize: 8, color: color);
}

TextStyle bodyText8w500(Color color) {
  return TextStyle(fontSize: 8, color: color, fontWeight: FontWeight.w500);
}

TextStyle bodyText10w500(Color color,
    {TextOverflow? overflow, TextDecoration? decoration}) {
  return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 10,
      color: color,
      overflow: overflow,
      decoration: decoration);
}

TextStyle bodyText10Bold(Color color) {
  return TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: color);
}

TextStyle bodyText12normal(Color color, {double? height}) {
  return TextStyle(fontSize: 12, color: color, height: height);
}

TextStyle bodyText14w500(Color color,
    {TextOverflow? overflow, TextDecoration? decoration}) {
  return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: color,
      overflow: overflow,
      decoration: decoration);
}

TextStyle bodyText14Bold(Color color, {TextOverflow? overflow}) {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: color,
    overflow: overflow,
  );
}

TextStyle bodyText34Bold(Color color, {TextOverflow? overflow}) {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 34,
    color: color,
    overflow: overflow,
  );
}

TextStyle bodyText14normal(Color color,
    {TextOverflow? overflow, double? height}) {
  return TextStyle(
      fontSize: 14, color: color, overflow: overflow, height: height);
}

TextStyle bodyText16normal(Color color, {double? height}) {
  return TextStyle(fontSize: 16, color: color, height: height);
}

TextStyle bodyText16Bold(Color color) {
  return TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: color);
}

TextStyle bodyText18Bold(Color color) {
  return TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: color);
}

TextStyle bodyText18normal(Color color, {double? height}) {
  return TextStyle(fontSize: 18, color: color, height: height);
}

TextStyle bodyText18w500(Color color, {double? height}) {
  return TextStyle(
      fontWeight: FontWeight.w500, fontSize: 18, color: color, height: height);
}

TextStyle bodyText38w500(Color color, {double? height}) {
  return TextStyle(
      fontWeight: FontWeight.w500, fontSize: 38, color: color, height: height);
}

TextStyle bodyText16w500(Color color) {
  return TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: color);
}

TextStyle bodyText26w500(Color color) {
  return TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: color);
}

SizedBox horizontalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

BoxDecoration decoration(Color color, double radius,
    {Color? borColor, double? blurRadius, Color? blurColor, double? width}) {
  return BoxDecoration(
    border: Border.fromBorderSide(
        BorderSide(color: borColor ?? transparent, width: width ?? 1)),
    color: color,
    borderRadius: BorderRadius.circular(radius),
  );
}

width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

SizedBox verticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}
