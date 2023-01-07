import '../onboard_six_screen/widgets/sliderlanguage_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:satish_s_application1/core/app_export.dart';
import 'package:satish_s_application1/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardSixScreen extends StatelessWidget {
  int silderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                padding: getPadding(
                  left: 19,
                  top: 136,
                  right: 19,
                  bottom: 136,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup30,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        198.00,
                      ),
                      child: Text(
                        "Maximize your impact with attendance analytics.",
                        maxLines: null,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        1.00,
                      ),
                      width: getHorizontalSize(
                        233.00,
                      ),
                      margin: getMargin(
                        top: 7,
                        bottom: 50,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgUndrawallthedatarehh4w,
                height: getVerticalSize(
                  229.00,
                ),
                width: getHorizontalSize(
                  328.00,
                ),
                margin: getMargin(
                  top: 37,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 105,
                  bottom: 5,
                ),
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    height: getVerticalSize(
                      83.00,
                    ),
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      silderIndex = index;
                    },
                  ),
                  itemCount: 1,
                  itemBuilder: (context, index, realIndex) {
                    return SliderlanguageItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: getPadding(
            left: 37,
            right: 29,
            bottom: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: getVerticalSize(
                  27.00,
                ),
                width: getHorizontalSize(
                  38.00,
                ),
                margin: getMargin(
                  top: 8,
                  bottom: 6,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Skip",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.54,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: getHorizontalSize(
                          36.00,
                        ),
                        margin: getMargin(
                          left: 1,
                          top: 21,
                          right: 1,
                          bottom: 4,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: getVerticalSize(
                                1.00,
                              ),
                              width: getHorizontalSize(
                                25.00,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.black900,
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                1.00,
                              ),
                              width: getHorizontalSize(
                                7.00,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.black900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  6.00,
                ),
                margin: getMargin(
                  left: 113,
                  top: 21,
                  bottom: 14,
                ),
                child: SmoothIndicator(
                  offset: 0,
                  count: 3,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 6.9900055,
                    activeDotColor: ColorConstant.black900,
                    dotColor: ColorConstant.black90033,
                    dotHeight: getVerticalSize(
                      6.00,
                    ),
                    dotWidth: getHorizontalSize(
                      6.00,
                    ),
                  ),
                ),
              ),
              Spacer(),
              CustomButton(
                width: 84,
                text: "Next",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
