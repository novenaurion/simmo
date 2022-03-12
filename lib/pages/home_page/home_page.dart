import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simmo/pages/home_page/promotion_slider_view.dart';
import 'package:simmo/pages/home_page/sub_catagory_item_list_view.dart';
import 'package:simmo/pages/home_page/sub_catagory_title_list_view.dart';
import 'package:simmo/resources/app_bar_view.dart';
import 'package:simmo/resources/drawer.dart';
import 'package:simmo/widgets/text_view.dart';

import '../../resources/dimens.dart';
import '../../resources/image_constant.dart';
import 'catagory_list_view.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: drawer(context),
      appBar: appBar(context, scaffoldKey),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: MARGIN_CARD_MEDIUM_2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: MARGIN_CARD_MEDIUM_2,
              ),
              PromotionSliderView(),
              const SizedBox(
                height: MARGIN_XLARGE,
              ),
              const CatagoryListView(),
              const SizedBox(
                height: MARGIN_XLARGE,
              ),
              SizedBox(
                height: 0.04.sh,
                child: const SubCatagoryTitleListView(),
              ),
              const SizedBox(
                height: MARGIN_CARD_MEDIUM_2,
              ),
              const Padding(
                padding: EdgeInsets.only(right: MARGIN_CARD_MEDIUM_2),
                child: SubCatagoryItemListView(),
              ),
              const SizedBox(
                height: MARGIN_CARD_MEDIUM_2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

