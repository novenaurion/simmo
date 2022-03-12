import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simmo/widgets/email_and_password_input_view.dart';
import 'package:simmo/widgets/login_sign_up_container_view.dart';

import '../../resources/dimens.dart';
import '../../resources/strings.dart';
import '../../widgets/button_view.dart';
import '../../widgets/rich_text_two_with_under_line_view.dart';
import '../../widgets/text_field_view_with_title_text.dart';
import '../../widgets/text_view.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginSignUpContainerView(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MARGIN_XLARGE.w
          ),
          child: Column(
            children: [
              SizedBox(height: MARGIN_CARD_MEDIUM_2.h,),

              TextView(
                text:CREATE_ACCOUNT,
                fontSize: TEXT_REGULAR_3X.sp,
                textColor: Theme.of(context).textTheme.bodyText1!.color,
                fontWeight: FontWeight.w600,
              ),

              SizedBox(height: MARGIN_CARD_MEDIUM_2.h,),

              TextFieldViewWithTitleText(
                textFormFiledFillColor: Theme.of(context).scaffoldBackgroundColor,
                title: USER_NAME,
                titleFontSize: TEXT_REGULAR.sp,
                titleFontWeight: FontWeight.w500,
                hintText: ENTER_YOUR_USER_NAME,
                hintFontColor: Theme.of(context).textTheme.subtitle1!.color,
                hintFontSize:TEXT_SMALL.sp ,
                titleFontColor: Theme.of(context).textTheme.bodyText1!.color,
              ),

              SizedBox(height: MARGIN_MEDIUM_3.h,),

              TextFieldViewWithTitleText(
                textFormFiledFillColor: Theme.of(context).scaffoldBackgroundColor,
                title: PHONE_NUMBER,
                titleFontSize: TEXT_REGULAR.sp,
                titleFontWeight: FontWeight.w500,
                hintText: ENTER_YOUR_PHONE_NUMBER,
                hintFontColor: Theme.of(context).textTheme.subtitle1!.color,
                hintFontSize:TEXT_SMALL.sp ,
                titleFontColor: Theme.of(context).textTheme.bodyText1!.color,
              ),
              SizedBox(height: MARGIN_MEDIUM_3.h,),

              const EmailAndPasswordInputView(),

              SizedBox(height: MARGIN_XXLARGE.h,),

              SizedBox(
                width: 0.6.sw,
                child: ButtonView(
                  fontSize: TEXT_REGULAR.sp,
                  textColor: Colors.white,
                  buttonText: CREATE_ACCOUNT,
                  buttonColor: Theme.of(context).primaryColor,
                  buttonBorderRadius: MARGIN_CARD_MEDIUM_2,
                ),
              ),
              SizedBox(height: MARGIN_CARD_MEDIUM_2.h,),
              const RichTextTwoWithUnderLineView(
                firstText: HAVE_ACCOUNT,
                secondText: LOGIN,
              ),

              SizedBox(height: MARGIN_CARD_MEDIUM_2.h,),
            ],
          ),
        ),
      ),
    );
  }
}
