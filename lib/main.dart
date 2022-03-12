import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simmo/pages/login_page/login_page.dart';
import 'package:simmo/pages/register_page/register_page.dart';
import 'package:simmo/resources/styles.dart';
import 'package:simmo/widgets/login_sign_up_container_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ()=> MaterialApp(
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        title: 'Simmo',
        theme:MyThemes.theme,
        home: const LoginPage(),
      ),
    );
  }
}
