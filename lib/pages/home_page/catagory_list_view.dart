import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/dimens.dart';
import '../../resources/image_constant.dart';
import '../../widgets/text_view.dart';


class CatagoryListView extends StatelessWidget {
  const CatagoryListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.only(left: MARGIN_LARGE),
          child:  TextView(
            text: "Catagory",
            textColor: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: TEXT_REGULAR_2X.sp,
          ),
        ),
        SizedBox(
          height: 0.23.sh,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: MARGIN_CARD_MEDIUM_2,
              );
            },
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                width: 0.3.sw,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 1.5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Image.asset(CATAGORY_IMAGE,width: 0.2.sw,),
                    const SizedBox(height: MARGIN_CARD_MEDIUM_2,),
                    TextView(
                      text:"Biryani",
                      textColor: Colors.black,
                      fontSize: TEXT_REGULAR.sp,
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
