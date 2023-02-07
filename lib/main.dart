import 'package:e_commerce/home.dart';
import 'package:e_commerce/login.dart';
import 'package:e_commerce/rating.dart';
import 'package:e_commerce/rice_det.dart';
import 'package:e_commerce/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
