import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import '../../resources/dimens.dart';
import '../../resources/image_constant.dart';
class PromotionSliderView extends StatefulWidget {
  const PromotionSliderView({
    Key? key,
  }) : super(key: key);

  @override
  State<PromotionSliderView> createState() => _PromotionSliderViewState();
}

class _PromotionSliderViewState extends State<PromotionSliderView> {

  late ScrollController scrollController;
  int currentIndex=0;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.8.sh,
      height: 0.2.sh,
      margin: const EdgeInsets.only(
          left: MARGIN_CARD_MEDIUM_2,
          right: MARGIN_CARD_MEDIUM_2 + MARGIN_CARD_MEDIUM_2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MARGIN_CARD_MEDIUM_2),
          border: Border.all(
              color: Theme.of(context).primaryColor, width: 2)),
      child: Stack(
        children: [
          Positioned.fill(
            child: CarouselSlider(
              options: CarouselOptions(
                height: 0.15.sh,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index,reason){
                  setState(() {
                    currentIndex=index;
                  });
                }
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.asset(
                      DEFAULT_ROUTE + "slider_photo.png",
                      fit: BoxFit.fitWidth,
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 0,
            right: 0,
            child: SizedBox(
              height: MARGIN_CARD_MEDIUM_2,
              child: Center(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return Container(
                      width: 20,
                      decoration: BoxDecoration(
                          border: Border.all(color:currentIndex==index?Theme.of(context).primaryColor:Colors.grey,width: 0.2 ),
                          shape: BoxShape.circle,
                          color:currentIndex==index?Theme.of(context).primaryColor:Colors.grey.withOpacity(0.2)
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
