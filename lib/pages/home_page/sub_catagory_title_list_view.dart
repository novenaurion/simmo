import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import '../../resources/dimens.dart';
import '../../widgets/text_view.dart';

class SubCatagoryTitleListView extends StatelessWidget {
  const SubCatagoryTitleListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: MARGIN_XLARGE,
          ),
          decoration: BoxDecoration(
            color: index == 0
                ? Theme.of(context).primaryColor
                : Colors.white,
            border: Border.all(
                color: index == 0
                    ? Theme.of(context).primaryColor
                    : Colors.grey,
                width: 0.2),
            borderRadius: BorderRadius.circular(MARGIN_XXLARGE),
          ),
          child: Center(
            child: TextView(
              text: "All",
              textColor: index == 0 ? Colors.white : Colors.black,
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: MARGIN_CARD_MEDIUM_2,
        );
      },
      itemCount: 6,
    );
  }
}

