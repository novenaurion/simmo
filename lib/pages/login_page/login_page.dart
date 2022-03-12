import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:simmo/pages/register_page/register_page.dart';
import 'package:simmo/pages/utils/widget_fuctions.dart';
import 'package:simmo/resources/dimens.dart';
import 'package:simmo/resources/strings.dart';
import 'package:simmo/widgets/button_view.dart';
import 'package:simmo/widgets/login_sign_up_container_view.dart';
import 'package:simmo/widgets/text_view.dart';

import '../../widgets/rich_text_two_with_under_line_view.dart';
import '../../widgets/email_and_password_input_view.dart';
import '../home_order_and_subscribe_page/home_order_and_subscribe_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                text:LOGIN_ACCOUNT,
                fontSize: TEXT_REGULAR_3X.sp,
                textColor: Theme.of(context).textTheme.bodyText1!.color,
                fontWeight: FontWeight.w600,
              ),

              SizedBox(height: MARGIN_CARD_MEDIUM_2.h,),

              const EmailAndPasswordInputView(),

              const SizedBox(height: MARGIN_MEDIUM_3,),

              SizedBox(
                width: 0.6.sw,
                child: ButtonView(
                  fontSize: TEXT_REGULAR.sp,
                  textColor: Colors.white,
                  buttonText: LOGIN,
                  buttonColor: Theme.of(context).primaryColor,
                  buttonBorderRadius: MARGIN_CARD_MEDIUM_2,
                  onClick: (){

                    navigateToPageWithoutReplacement(context, HomeOrderAndSubscribePage());
                  },
                ),
              ),

              const SizedBox(height: MARGIN_CARD_MEDIUM_2,),

              TextView(
                textColor: Theme.of(context).textTheme.bodyText2!.color,
                fontSize: TEXT_REGULAR.sp,
                text: FORGET_PASSWORD,
                isUnderLine: true,
              ),

              SizedBox(height: 0.1.sh,),
              
              GestureDetector(
                onTap: (){
                  navigateToPageWithoutReplacement(context, RegisterPage());
                },
                child: const RichTextTwoWithUnderLineView(
                  firstText: DONT_HAVE_ACCOUNT,
                  secondText: CREATE_ACCOUNT,
                ),
              ),
              const SizedBox(height: MARGIN_CARD_MEDIUM_2,),

            ],
          ),
        ),
      ),
    );
  }
}

