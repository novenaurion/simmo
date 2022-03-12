import 'package:flutter/material.dart';
import 'package:simmo/resources/colors.dart';

class MyThemes{

  static final theme=ThemeData(
    primaryColor: PRIMARY_COLOR,
    scaffoldBackgroundColor: BACKGROUND_COLOR,
    textTheme:const TextTheme(
      bodyText1: TextStyle(color: Colors.black),
      bodyText2: TextStyle(color: SECONDARY_COLOR),
      subtitle1: TextStyle(color: Colors.grey),
    )
  );

}