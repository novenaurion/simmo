import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simmo/widgets/text_view.dart';

import '../resources/dimens.dart';


class ButtonView extends StatelessWidget {
  const ButtonView({
    Key? key,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonColor,
    this.buttonBorderRadius = 0,
    this.fontSize,
    this.buttonText,
    this.textColor,
    this.isButtonWithIcon = false,
    this.iconImage,
    this.isGoolge = false, this.textFontWeight, this.onClick,
  }) : super(key: key);

  final double? buttonHeight;
  final double? buttonWidth;
  final Color? buttonColor;
  final double? buttonBorderRadius;
  final double? fontSize;
  final String? buttonText;
  final Color? textColor;
  final bool? isButtonWithIcon;
  final String? iconImage;
  final bool? isGoolge;
  final FontWeight? textFontWeight;
  final Function? onClick;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        onClick!();
      },
      height: buttonHeight,
      minWidth: buttonWidth,
      color: buttonColor,
      shape: RoundedRectangleBorder(

        borderRadius: BorderRadius.circular(buttonBorderRadius!),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isButtonWithIcon == true
              ? isGoolge == true
              ? Image.asset(
            iconImage!,
            height: MARGIN_LARGE.h,
            width: MARGIN_LARGE.w,
          )
              : ImageIcon(
            AssetImage(iconImage!),
          )
              : Container(),
          isButtonWithIcon == true
              ? SizedBox(
            width: MARGIN_CARD_MEDIUM_2.w,
          )
              : Container(),
          TextView(
            text: buttonText,
            textColor: textColor,
            fontSize: fontSize,
            textAlign: TextAlign.center,
            fontWeight: textFontWeight,
          ),
        ],
      ),
    );
  }
}
