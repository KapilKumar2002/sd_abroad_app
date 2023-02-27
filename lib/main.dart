import 'package:flutter/material.dart';
import 'package:sd_abroad_app/views/exam/articlefullview.dart';
import 'package:sd_abroad_app/views/exam/referandearn.dart';
import 'package:sd_abroad_app/views/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}
