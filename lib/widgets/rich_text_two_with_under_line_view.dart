import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/dimens.dart';
class RichTextTwoWithUnderLineView extends StatelessWidget {
  const RichTextTwoWithUnderLineView({
    Key? key,required this.firstText,required this.secondText,
  }) : super(key: key);

  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: firstText,
          style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1!.color, fontSize: TEXT_REGULAR.sp),
          children: <TextSpan>[
            TextSpan(text: secondText,
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color:Theme.of(context).textTheme.bodyText2!.color, fontSize: TEXT_REGULAR.sp),
            )
          ]
      ),
    );
  }
}
