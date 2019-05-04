import 'package:flutter/material.dart';
import 'package:flutter_app/home_page.dart';
import 'package:flutter_app/constants/constants.dart' show AppColors;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '开源中国',
      theme: ThemeData(
        primaryColor: Color(AppColors.APP_THEME),
      ),
      home: HomePage(),
    );
  }
}
