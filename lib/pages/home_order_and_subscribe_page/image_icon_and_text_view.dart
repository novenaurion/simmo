import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import '../../resources/dimens.dart';
import '../../widgets/text_view.dart';

class ImageIconAndTextView extends StatelessWidget {
  const ImageIconAndTextView({
    Key? key,required this.title,required this.image,
  }) : super(key: key);

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.4.sw,
      height: 0.2.sh,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MARGIN_CARD_MEDIUM_2),
        border: Border.all(color: Theme.of(context).primaryColor,width: 1.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            image,
          ),
          TextView(
            textColor: Theme.of(context).primaryColor,
            text:title,
            fontSize: TEXT_REGULAR_3X.sp,
            fontWeight: FontWeight.w700,
          )
        ],
      ),
    );
  }
}
