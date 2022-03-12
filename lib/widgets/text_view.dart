import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  const TextView({
    Key? key,
    this.text,
    this.textColor,
    this.fontSize,
    this.textAlign,
    this.fontWeight,
    this.maxLine,
    this.lineHeight,
    this.overflow, this.isUnderLine=false,
  }) : super(key: key);

  final String? text;
  final Color? textColor;
  final double? fontSize;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final int? maxLine;
  final double? lineHeight;
  final TextOverflow? overflow;
  final bool isUnderLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: overflow,

      style: TextStyle(
        decoration: isUnderLine?TextDecoration.underline:null,
        height: lineHeight,
        fontWeight: fontWeight,
        fontFamily: "Roboto",
        fontSize: fontSize,
        color: textColor,
      ),
    );
  }
}
