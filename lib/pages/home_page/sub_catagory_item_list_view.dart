import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/dimens.dart';
import '../../resources/image_constant.dart';
import '../../widgets/text_view.dart';
class SubCatagoryItemListView extends StatelessWidget {
  const SubCatagoryItemListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return const ProductItemView();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: MARGIN_CARD_MEDIUM_2,
          );
        },
        itemCount: 10);
  }
}

class ProductItemView extends StatelessWidget {
  const ProductItemView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: MARGIN_CARD_MEDIUM_2,
          vertical: MARGIN_CARD_MEDIUM_2),
      decoration: BoxDecoration(
        borderRadius:
        BorderRadius.circular(MARGIN_CARD_MEDIUM_2),
        border: Border.all(
            color: Theme.of(context).primaryColor, width: 2),
      ),
      child: Row(
        crossAxisAlignment:CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            CATAGORY_IMAGE,
            width: 0.2.sw,
            height: 0.1.sh,
          ),
          SizedBox(width: MARGIN_CARD_MEDIUM_2,),
          const ProductItemNameAndAboutView(),
          const SizedBox(width: MARGIN_CARD_MEDIUM_2,),
          PriceAndRatingView()
        ],
      ),
    );
  }
}

class PriceAndRatingView extends StatelessWidget {
  const PriceAndRatingView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextView(
          text: "200",
          textColor: Theme.of(context).primaryColor,
          fontSize: TEXT_REGULAR.sp,
        ),
        SizedBox(height: MARGIN_CARD_MEDIUM_2,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColor,width: 1),
            borderRadius: BorderRadius.circular(MARGIN_CARD_MEDIUM_2),
          ),
          padding:const EdgeInsets.symmetric(
              horizontal: MARGIN_SMALL
          ),
          child: Center(
            child: Row(
              children: [
                TextView(
                  text: "4.0",
                  textColor: Theme.of(context).primaryColor,
                  fontSize: TEXT_SMALL_2X.sp,
                ),
                const SizedBox(width: MARGIN_MEDIUM_1,),
                Icon(Icons.star,color: Theme.of(context).primaryColor,size: MARGIN_MEDIUM_3,),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ProductItemNameAndAboutView extends StatelessWidget {
  const ProductItemNameAndAboutView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextView(
            text: "Burmese Biryani",
            textColor: Colors.black,
            fontSize: TEXT_REGULAR_2X.sp,
          ),
          TextView(
            text: "Subscribe for those who want best",
            textColor: Colors.grey,
            fontSize: TEXT_REGULAR.sp,
          ),
        ],
      ),
    );
  }
}
