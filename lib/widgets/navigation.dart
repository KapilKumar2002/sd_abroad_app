import 'package:flutter/material.dart';

nextScreen(BuildContext context, Widget screen) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}

goBack(BuildContext context) {
  return Navigator.pop(context);
}
