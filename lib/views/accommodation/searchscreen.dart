import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/accommodation/error.dart';
import 'package:sd_abroad_app/views/accommodation/result.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        backgroundColor: transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            goBack(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 15,
          ),
        ),
        title: TextFormField(
          controller: controller,
          decoration: InputDecoration(
              prefixIcon: Image.asset("assets/images/search.png"),
              border: InputBorder.none,
              hintText: "titwala east",
              hintStyle: bodyText12Bold(black.withOpacity(.4))),
        ),
      ),
      body: controller.text == "titwala east"
          ? ErrorScreen()
          : AccommodationResult(),
    );
  }
}
