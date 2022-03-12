import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:simmo/pages/home_page/home_page.dart';
import 'package:simmo/pages/utils/widget_fuctions.dart';
import 'package:simmo/resources/app_bar_view.dart';
import 'package:simmo/resources/dimens.dart';
import 'package:simmo/resources/drawer.dart';
import 'package:simmo/resources/image_constant.dart';
import 'package:simmo/widgets/text_view.dart';

import 'image_icon_and_text_view.dart';

class HomeOrderAndSubscribePage extends StatelessWidget {
  HomeOrderAndSubscribePage({Key? key}) : super(key: key);

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      drawer: drawer(context),
      appBar: appBar(context, scaffoldKey),
        // actions: [
        //    // CircleAvatar(
        //    //  child: Image.network(
        //    //  ),
        //   // ),
        // ]
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 0.2.sh,
            ),
            TextView(
              text: "Please Select",
              textColor: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: TEXT_REGULAR_2X.sp,
            ),
            const SizedBox(
              height: MARGIN_MEDIUM_3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  GestureDetector(
                   onTap: (){
                     navigateToPageWithoutReplacement(context, HomePage());
                   },
                   child:const  ImageIconAndTextView(
                     image: ORDER_ICON,
                    title: "Order",
                ),
                 ),
                 const ImageIconAndTextView(
                   image: SUBSCRIBE_ICON,
                  title: "Subscribe",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
