import 'package:flutter/material.dart';
import 'package:satish_s_application1/core/app_export.dart';
import 'package:satish_s_application1/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardFiveScreen extends StatelessWidget {
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
                height: getVerticalSize(
                  175.00,
                ),
                width: size.width,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgShape,
                      height: getVerticalSize(
                        148.00,
                      ),
                      width: getHorizontalSize(
                        428.00,
                      ),
                      alignment: Alignment.topCenter,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: getHorizontalSize(
                          215.00,
                        ),
                        margin: getMargin(
                          left: 20,
                        ),
                        child: Text(
                          "Go beyond borders with geo-tagging and geo-fencing",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.gray800,
                            fontSize: getFontSize(
                              16,
                            ),
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: getVerticalSize(
                    1.00,
                  ),
                  width: getHorizontalSize(
                    233.00,
                  ),
                  margin: getMargin(
                    left: 20,
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.gray800,
                  ),
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgUndrawmylocationrer52x,
                height: getVerticalSize(
                  284.00,
                ),
                width: getHorizontalSize(
                  322.00,
                ),
                margin: getMargin(
                  top: 178,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 97,
                ),
                child: Text(
                  "Geo-tagging!",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: ColorConstant.black900,
                    fontSize: getFontSize(
                      26,
                    ),
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  246.00,
                ),
                margin: getMargin(
                  top: 6,
                ),
                child: Text(
                  "Attendance can be marked on the \nbasis of a desired location.",
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstant.black900,
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: getPadding(
                    left: 42,
                    top: 15,
                    right: 24,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                          left: 111,
                          top: 21,
                          bottom: 15,
                        ),
                        child: SmoothIndicator(
                          offset: 0,
                          count: 3,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                            spacing: 7,
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
            ],
          ),
        ),
      ),
    );
  }
}
