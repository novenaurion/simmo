import 'package:flutter/material.dart';
import 'package:simmo/resources/dimens.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/image_constant.dart';

class LoginSignUpContainerView extends StatelessWidget {
  const LoginSignUpContainerView({Key? key,required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 0.2.sh),
              child: Image.asset(WELCOME_LOGO),
            ),
          ),
          Positioned(
            top: 0.43.sh,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius:const BorderRadius.only(
                  topLeft: Radius.circular(MARGIN_XXLARGE),
                  topRight: Radius.circular(MARGIN_XXLARGE)
                ),
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              child:child ,
            ),

          )
        ],
      ),
    );
  }
}
