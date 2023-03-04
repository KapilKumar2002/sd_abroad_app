import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';

class CustomDropDown extends StatefulWidget {
  final List list;
  final double height;
  final TextStyle? textStyle;
  final String hint;
  final double? width;
  final Color? dropdownColor;
  final Color? bcolor;
  final double? iconSize;
  final double? radius;
  final double? hp;
  final bool? icon;
  final Color? iconColor;
  const CustomDropDown(
      {super.key,
      this.textStyle,
      this.hp,
      this.radius,
      this.icon,
      this.bcolor,
      this.iconSize,
      this.dropdownColor,
      required this.list,
      required this.height,
      required this.hint,
      this.iconColor,
      this.width});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String selectData = "";
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 6),
        height: widget.height,
        width: widget.width ?? width(context),
        decoration: decoration(
            widget.dropdownColor ?? transparent, widget.radius ?? 0,
            borColor: widget.bcolor),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: widget.hp ?? 8),
          child: DropdownButton(
              icon: Icon(
                CupertinoIcons.chevron_down,
                size: widget.iconSize ?? 18,
                color: widget.iconColor ?? primaryColor,
              ),
              hint: Text(
                selectData.isEmpty ? "${widget.hint}" : selectData,
                style: widget.textStyle ?? bodyText12w500(primaryColor),
              ),
              style: bodyText12w500(primaryColor),
              dropdownColor: widget.dropdownColor ?? white,
              underline: SizedBox(),
              isExpanded: true,
              items: widget.list.map((e) {
                return DropdownMenuItem(
                    value: e.toString(), child: Text(e.toString()));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectData = value!;
                });
              }),
        ));
  }
}
