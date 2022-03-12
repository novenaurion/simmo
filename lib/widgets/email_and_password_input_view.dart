import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import '../resources/dimens.dart';
import '../resources/strings.dart';
import 'text_field_view_with_title_text.dart';
class EmailAndPasswordInputView extends StatelessWidget {
  const EmailAndPasswordInputView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldViewWithTitleText(
          textFormFiledFillColor: Theme.of(context).scaffoldBackgroundColor,
          title: EMAIL,
          titleFontSize: TEXT_REGULAR.sp,
          titleFontWeight: FontWeight.w500,
          hintText: ENTER_YOUR_EMAIL,
          hintFontColor: Theme.of(context).textTheme.subtitle1!.color,
          hintFontSize:TEXT_SMALL.sp ,
          titleFontColor: Theme.of(context).textTheme.bodyText1!.color,
        ),

        SizedBox(height: MARGIN_MEDIUM_3.h,),

        TextFieldViewWithTitleText(
          textFormFiledFillColor: Theme.of(context).scaffoldBackgroundColor,
          title: PASSWORD,
          titleFontSize: TEXT_REGULAR.sp,
          titleFontWeight: FontWeight.w500,
          hintText: ENTER_YOUR_PASSWORD,
          hintFontColor: Theme.of(context).textTheme.subtitle1!.color,
          hintFontSize:TEXT_SMALL.sp ,
          titleFontColor: Theme.of(context).textTheme.bodyText1!.color,
          isPassword: true,
        ),
      ],
    );
  }
}

