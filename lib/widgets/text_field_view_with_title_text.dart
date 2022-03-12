import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simmo/widgets/text_view.dart';

import '../resources/dimens.dart';


class TextFieldViewWithTitleText extends StatelessWidget {
  const TextFieldViewWithTitleText({
    Key? key,
    this.title,
    this.hintText,
    this.titleFontSize,
    this.hintFontSize,
    this.titleFontColor,
    this.hintFontColor,
    this.titleFontWeight,
    this.textFormFiledFillColor,
    this.isDense = false,
    this.isSuffixIcon = false,
    this.suffixIcon,
    this.isEmptyTitle = false,
    this.borderRadius = MARGIN_CARD_MEDIUM_2,
    this.isPassword = false,
    this.isKeyboardTypeNum = false,
    this.borderWidth = 0.4, this.letterSpacing, this.fontSize,
  }) : super(key: key);

  final String? title;
  final String? hintText;
  final double? titleFontSize;
  final double? hintFontSize;
  final Color? titleFontColor;
  final Color? hintFontColor;
  final FontWeight? titleFontWeight;
  final Color? textFormFiledFillColor;
  final bool? isDense;
  final bool? isSuffixIcon;
  final String? suffixIcon;
  final bool? isEmptyTitle;
  final double borderRadius;
  final bool? isPassword;
  final bool? isKeyboardTypeNum;
  final double? borderWidth;
  final double? letterSpacing;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Visibility(
          visible: !isEmptyTitle!,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextView(
                text: title,
                textColor: titleFontColor,
                fontSize: titleFontSize,
                fontWeight: titleFontWeight,
              ),
            ],
          ),
        ),
        TextFormField(

          cursorColor: Colors.grey,
          obscureText: isPassword!,
          keyboardType: isKeyboardTypeNum! ? TextInputType.number : null,
          style: TextStyle(
              letterSpacing: letterSpacing,
              fontSize: fontSize,
            color: Colors.black
          ),

          decoration: InputDecoration(
            contentPadding:const EdgeInsets.symmetric(horizontal: 0,vertical: MARGIN_CARD_MEDIUM_2) ,

            filled: true,

            fillColor: textFormFiledFillColor,
            hintText: hintText,
            hintStyle: TextStyle(
              color: hintFontColor,
              fontSize: hintFontSize,
            ),
            suffixIcon:isPassword!?const Icon(Icons.visibility_off):isSuffixIcon!
                ? ImageIcon(
              AssetImage(suffixIcon!),
              color: Theme.of(context).textTheme.bodyText2!.color,
            )
                : null,
            isDense: isDense,
          ),
        ),
      ],
    );
  }
}
