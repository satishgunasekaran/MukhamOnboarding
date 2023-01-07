import '../onboard_four_screen/widgets/sliderfacialrecognition_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:satish_s_application1/core/app_export.dart';
import 'package:satish_s_application1/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardFourScreen extends StatelessWidget {
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
                  left: 20,
                  top: 132,
                  right: 20,
                  bottom: 132,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup15,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        223.00,
                      ),
                      margin: getMargin(
                        top: 2,
                      ),
                      child: Text(
                        "Experience the convenience of face recognition technology",
                        maxLines: null,
                        textAlign: TextAlign.left,
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
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  297.00,
                ),
                margin: getMargin(
                  left: 72,
                  top: 49,
                  right: 59,
                ),
                padding: getPadding(
                  left: 3,
                  top: 5,
                  right: 3,
                  bottom: 5,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup63,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 12,
                        bottom: 4,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: getVerticalSize(
                                71.00,
                              ),
                              width: getHorizontalSize(
                                74.00,
                              ),
                              margin: getMargin(
                                right: 6,
                              ),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPath388,
                                    height: getVerticalSize(
                                      70.00,
                                    ),
                                    width: getHorizontalSize(
                                      69.00,
                                    ),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      height: getVerticalSize(
                                        70.00,
                                      ),
                                      width: getHorizontalSize(
                                        69.00,
                                      ),
                                      padding: getPadding(
                                        left: 16,
                                        top: 13,
                                        right: 16,
                                        bottom: 13,
                                      ),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            ImageConstant.imgPath388,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgCheckmark,
                                            height: getVerticalSize(
                                              40.00,
                                            ),
                                            width: getHorizontalSize(
                                              37.00,
                                            ),
                                            alignment: Alignment.topCenter,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 18,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgG1086,
                                  height: getVerticalSize(
                                    11.00,
                                  ),
                                  width: getHorizontalSize(
                                    9.00,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgG1126,
                                  height: getVerticalSize(
                                    10.00,
                                  ),
                                  width: getHorizontalSize(
                                    8.00,
                                  ),
                                  margin: getMargin(
                                    left: 19,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              171.00,
                            ),
                            width: getHorizontalSize(
                              99.00,
                            ),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgContrast,
                                  height: getVerticalSize(
                                    27.00,
                                  ),
                                  width: getHorizontalSize(
                                    38.00,
                                  ),
                                  alignment: Alignment.topRight,
                                  margin: getMargin(
                                    top: 4,
                                    right: 9,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgG534,
                                  height: getVerticalSize(
                                    14.00,
                                  ),
                                  width: getHorizontalSize(
                                    10.00,
                                  ),
                                  alignment: Alignment.topRight,
                                  margin: getMargin(
                                    top: 17,
                                    right: 9,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgG554,
                                  height: getVerticalSize(
                                    13.00,
                                  ),
                                  width: getHorizontalSize(
                                    9.00,
                                  ),
                                  alignment: Alignment.topRight,
                                  margin: getMargin(
                                    top: 18,
                                    right: 9,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: getVerticalSize(
                                      26.00,
                                    ),
                                    width: getHorizontalSize(
                                      42.00,
                                    ),
                                    margin: getMargin(
                                      top: 22,
                                      right: 3,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgG574,
                                          height: getVerticalSize(
                                            26.00,
                                          ),
                                          width: getHorizontalSize(
                                            42.00,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgG594,
                                          height: getVerticalSize(
                                            8.00,
                                          ),
                                          width: getHorizontalSize(
                                            7.00,
                                          ),
                                          alignment: Alignment.topRight,
                                          margin: getMargin(
                                            top: 3,
                                            right: 9,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgG612,
                                  height: getVerticalSize(
                                    8.00,
                                  ),
                                  width: getHorizontalSize(
                                    5.00,
                                  ),
                                  alignment: Alignment.topRight,
                                  margin: getMargin(
                                    top: 20,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath646,
                                  height: getVerticalSize(
                                    67.00,
                                  ),
                                  width: getHorizontalSize(
                                    56.00,
                                  ),
                                  alignment: Alignment.topLeft,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgG648,
                                  height: getVerticalSize(
                                    4.00,
                                  ),
                                  width: getHorizontalSize(
                                    10.00,
                                  ),
                                  alignment: Alignment.bottomLeft,
                                  margin: getMargin(
                                    left: 32,
                                    bottom: 2,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgG666,
                                  height: getVerticalSize(
                                    3.00,
                                  ),
                                  width: getHorizontalSize(
                                    2.00,
                                  ),
                                  alignment: Alignment.bottomLeft,
                                  margin: getMargin(
                                    left: 33,
                                    bottom: 5,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgG682,
                                  height: getVerticalSize(
                                    4.00,
                                  ),
                                  width: getHorizontalSize(
                                    10.00,
                                  ),
                                  alignment: Alignment.bottomCenter,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgG700,
                                  height: getVerticalSize(
                                    5.00,
                                  ),
                                  width: getHorizontalSize(
                                    3.00,
                                  ),
                                  alignment: Alignment.bottomCenter,
                                  margin: getMargin(
                                    bottom: 3,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath732,
                                  height: getVerticalSize(
                                    55.00,
                                  ),
                                  width: getHorizontalSize(
                                    15.00,
                                  ),
                                  alignment: Alignment.bottomLeft,
                                  margin: getMargin(
                                    left: 31,
                                    bottom: 8,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage744,
                                  height: getVerticalSize(
                                    49.00,
                                  ),
                                  width: getHorizontalSize(
                                    21.00,
                                  ),
                                  alignment: Alignment.bottomLeft,
                                  margin: getMargin(
                                    left: 30,
                                    bottom: 8,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage756,
                                  height: getVerticalSize(
                                    6.00,
                                  ),
                                  width: getHorizontalSize(
                                    4.00,
                                  ),
                                  alignment: Alignment.bottomRight,
                                  margin: getMargin(
                                    right: 40,
                                    bottom: 75,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath774,
                                  height: getVerticalSize(
                                    76.00,
                                  ),
                                  width: getHorizontalSize(
                                    31.00,
                                  ),
                                  alignment: Alignment.bottomCenter,
                                  margin: getMargin(
                                    bottom: 6,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: getVerticalSize(
                                      73.00,
                                    ),
                                    width: getHorizontalSize(
                                      56.00,
                                    ),
                                    margin: getMargin(
                                      left: 10,
                                      top: 18,
                                    ),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          ImageConstant.imgGroup53,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgG814,
                                          height: getVerticalSize(
                                            6.00,
                                          ),
                                          width: getHorizontalSize(
                                            5.00,
                                          ),
                                          alignment: Alignment.bottomLeft,
                                          margin: getMargin(
                                            bottom: 2,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage848,
                                          height: getVerticalSize(
                                            66.00,
                                          ),
                                          width: getHorizontalSize(
                                            7.00,
                                          ),
                                          alignment: Alignment.topCenter,
                                          margin: getMargin(
                                            top: 1,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage866,
                                          height: getVerticalSize(
                                            63.00,
                                          ),
                                          width: getHorizontalSize(
                                            3.00,
                                          ),
                                          alignment: Alignment.centerLeft,
                                          margin: getMargin(
                                            left: 21,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage884,
                                          height: getVerticalSize(
                                            29.00,
                                          ),
                                          width: getHorizontalSize(
                                            3.00,
                                          ),
                                          alignment: Alignment.topRight,
                                          margin: getMargin(
                                            top: 13,
                                            right: 20,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage902,
                                          height: getVerticalSize(
                                            52.00,
                                          ),
                                          width: getHorizontalSize(
                                            3.00,
                                          ),
                                          alignment: Alignment.bottomLeft,
                                          margin: getMargin(
                                            left: 17,
                                            bottom: 4,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage920,
                                          height: getVerticalSize(
                                            18.00,
                                          ),
                                          width: getHorizontalSize(
                                            3.00,
                                          ),
                                          alignment: Alignment.topRight,
                                          margin: getMargin(
                                            top: 20,
                                            right: 17,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage938,
                                          height: getVerticalSize(
                                            14.00,
                                          ),
                                          width: getHorizontalSize(
                                            3.00,
                                          ),
                                          alignment: Alignment.topRight,
                                          margin: getMargin(
                                            top: 24,
                                            right: 13,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage956,
                                          height: getVerticalSize(
                                            44.00,
                                          ),
                                          width: getHorizontalSize(
                                            3.00,
                                          ),
                                          alignment: Alignment.bottomLeft,
                                          margin: getMargin(
                                            left: 14,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage974,
                                          height: getVerticalSize(
                                            33.00,
                                          ),
                                          width: getHorizontalSize(
                                            3.00,
                                          ),
                                          alignment: Alignment.bottomLeft,
                                          margin: getMargin(
                                            left: 10,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage992,
                                          height: getVerticalSize(
                                            26.00,
                                          ),
                                          width: getHorizontalSize(
                                            3.00,
                                          ),
                                          alignment: Alignment.bottomLeft,
                                          margin: getMargin(
                                            left: 7,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage1010,
                                          height: getVerticalSize(
                                            22.00,
                                          ),
                                          width: getHorizontalSize(
                                            3.00,
                                          ),
                                          alignment: Alignment.bottomLeft,
                                          margin: getMargin(
                                            left: 3,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage1028,
                                          height: getVerticalSize(
                                            15.00,
                                          ),
                                          width: getHorizontalSize(
                                            3.00,
                                          ),
                                          alignment: Alignment.bottomRight,
                                          margin: getMargin(
                                            right: 20,
                                            bottom: 7,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgG796,
                                  height: getVerticalSize(
                                    13.00,
                                  ),
                                  width: getHorizontalSize(
                                    12.00,
                                  ),
                                  alignment: Alignment.topCenter,
                                  margin: getMargin(
                                    top: 8,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage1046,
                                  height: getVerticalSize(
                                    18.00,
                                  ),
                                  width: getHorizontalSize(
                                    3.00,
                                  ),
                                  alignment: Alignment.topLeft,
                                  margin: getMargin(
                                    left: 10,
                                    top: 72,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgG574,
                                  height: getVerticalSize(
                                    9.00,
                                  ),
                                  width: getHorizontalSize(
                                    8.00,
                                  ),
                                  alignment: Alignment.topCenter,
                                  margin: getMargin(
                                    top: 3,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath732,
                                  height: getVerticalSize(
                                    35.00,
                                  ),
                                  width: getHorizontalSize(
                                    48.00,
                                  ),
                                  alignment: Alignment.topRight,
                                  margin: getMargin(
                                    top: 23,
                                    right: 17,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgG1106,
                                  height: getVerticalSize(
                                    11.00,
                                  ),
                                  width: getHorizontalSize(
                                    9.00,
                                  ),
                                  alignment: Alignment.topLeft,
                                  margin: getMargin(
                                    left: 30,
                                    top: 17,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgG1146,
                                  height: getVerticalSize(
                                    11.00,
                                  ),
                                  width: getHorizontalSize(
                                    8.00,
                                  ),
                                  alignment: Alignment.topRight,
                                  margin: getMargin(
                                    top: 16,
                                    right: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        283.00,
                      ),
                      width: getHorizontalSize(
                        184.00,
                      ),
                      margin: getMargin(
                        left: 4,
                        top: 7,
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPath40,
                            height: getVerticalSize(
                              272.00,
                            ),
                            width: getHorizontalSize(
                              37.00,
                            ),
                            alignment: Alignment.topRight,
                            margin: getMargin(
                              right: 2,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: getHorizontalSize(
                                171.00,
                              ),
                              margin: getMargin(
                                left: 6,
                                right: 7,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    ImageConstant.imgGroup17,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgG106,
                                    height: getSize(
                                      1.00,
                                    ),
                                    width: getSize(
                                      1.00,
                                    ),
                                    margin: getMargin(
                                      right: 5,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgG110,
                                    height: getSize(
                                      5.00,
                                    ),
                                    width: getSize(
                                      5.00,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgG82,
                                    height: getSize(
                                      4.00,
                                    ),
                                    width: getSize(
                                      4.00,
                                    ),
                                    margin: getMargin(
                                      top: 1,
                                      right: 70,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPath80,
                                    height: getVerticalSize(
                                      242.00,
                                    ),
                                    width: getHorizontalSize(
                                      122.00,
                                    ),
                                    alignment: Alignment.centerLeft,
                                    margin: getMargin(
                                      left: 4,
                                      top: 4,
                                      bottom: 5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: getVerticalSize(
                                5.00,
                              ),
                              width: getHorizontalSize(
                                50.00,
                              ),
                              margin: getMargin(
                                left: 39,
                                bottom: 14,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray50,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: getVerticalSize(
                                268.00,
                              ),
                              width: getHorizontalSize(
                                138.00,
                              ),
                              margin: getMargin(
                                right: 7,
                              ),
                              padding: getPadding(
                                top: 5,
                                bottom: 5,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    ImageConstant.imgGroup16,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPath168,
                                    height: getVerticalSize(
                                      247.00,
                                    ),
                                    width: getHorizontalSize(
                                      132.00,
                                    ),
                                    alignment: Alignment.centerLeft,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgPath186,
                            height: getVerticalSize(
                              192.00,
                            ),
                            width: getHorizontalSize(
                              154.00,
                            ),
                            alignment: Alignment.topLeft,
                            margin: getMargin(
                              top: 36,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: getVerticalSize(
                                190.00,
                              ),
                              width: getHorizontalSize(
                                151.00,
                              ),
                              margin: getMargin(
                                top: 36,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: fs.Svg(
                                    ImageConstant.imgGroup50,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPath208,
                                    height: getVerticalSize(
                                      183.00,
                                    ),
                                    width: getHorizontalSize(
                                      100.00,
                                    ),
                                    alignment: Alignment.centerRight,
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: getPadding(
                                        right: 12,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.imgG210,
                                            height: getVerticalSize(
                                              1.00,
                                            ),
                                            width: getHorizontalSize(
                                              8.00,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgG210,
                                            height: getVerticalSize(
                                              1.00,
                                            ),
                                            width: getHorizontalSize(
                                              5.00,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      width: getHorizontalSize(
                                        111.00,
                                      ),
                                      padding: getPadding(
                                        left: 4,
                                        top: 8,
                                        right: 4,
                                        bottom: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: fs.Svg(
                                            ImageConstant.imgGroup25,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.imgG414,
                                            height: getVerticalSize(
                                              26.00,
                                            ),
                                            width: getHorizontalSize(
                                              22.00,
                                            ),
                                            margin: getMargin(
                                              right: 18,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgG434,
                                            height: getVerticalSize(
                                              25.00,
                                            ),
                                            width: getHorizontalSize(
                                              24.00,
                                            ),
                                            margin: getMargin(
                                              top: 41,
                                              right: 26,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgG510,
                                            height: getVerticalSize(
                                              17.00,
                                            ),
                                            width: getHorizontalSize(
                                              38.00,
                                            ),
                                            alignment: Alignment.centerLeft,
                                            margin: getMargin(
                                              top: 43,
                                              bottom: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgG454,
                                    height: getVerticalSize(
                                      24.00,
                                    ),
                                    width: getHorizontalSize(
                                      23.00,
                                    ),
                                    alignment: Alignment.topLeft,
                                    margin: getMargin(
                                      left: 36,
                                      top: 8,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgG474,
                                    height: getVerticalSize(
                                      25.00,
                                    ),
                                    width: getHorizontalSize(
                                      20.00,
                                    ),
                                    alignment: Alignment.topLeft,
                                    margin: getMargin(
                                      left: 29,
                                      top: 72,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      height: getVerticalSize(
                                        14.00,
                                      ),
                                      width: getHorizontalSize(
                                        66.00,
                                      ),
                                      margin: getMargin(
                                        left: 36,
                                        bottom: 73,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgPath496,
                                            height: getVerticalSize(
                                              14.00,
                                            ),
                                            width: getHorizontalSize(
                                              66.00,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant.imgFolder,
                                            height: getVerticalSize(
                                              11.00,
                                            ),
                                            width: getHorizontalSize(
                                              66.00,
                                            ),
                                            alignment: Alignment.topCenter,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      height: getVerticalSize(
                                        15.00,
                                      ),
                                      width: getHorizontalSize(
                                        66.00,
                                      ),
                                      margin: getMargin(
                                        left: 33,
                                        bottom: 54,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgPath496,
                                            height: getVerticalSize(
                                              15.00,
                                            ),
                                            width: getHorizontalSize(
                                              66.00,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                          CustomImageView(
                                            svgPath:
                                                ImageConstant.imgFolder12x66,
                                            height: getVerticalSize(
                                              12.00,
                                            ),
                                            width: getHorizontalSize(
                                              66.00,
                                            ),
                                            alignment: Alignment.topCenter,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: getVerticalSize(
                                        74.00,
                                      ),
                                      width: getHorizontalSize(
                                        73.00,
                                      ),
                                      margin: getMargin(
                                        top: 17,
                                      ),
                                      padding: getPadding(
                                        all: 1,
                                      ),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: fs.Svg(
                                            ImageConstant.imgGroup52,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              height: getVerticalSize(
                                                71.00,
                                              ),
                                              width: getHorizontalSize(
                                                70.00,
                                              ),
                                              padding: getPadding(
                                                left: 6,
                                                top: 1,
                                                right: 6,
                                                bottom: 1,
                                              ),
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: fs.Svg(
                                                    ImageConstant.imgGroup29,
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Stack(
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgPath1196,
                                                    height: getVerticalSize(
                                                      61.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      56.00,
                                                    ),
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgPath1222,
                                            height: getVerticalSize(
                                              20.00,
                                            ),
                                            width: getHorizontalSize(
                                              58.00,
                                            ),
                                            alignment: Alignment.bottomLeft,
                                            margin: getMargin(
                                              left: 4,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgG1224,
                                            height: getVerticalSize(
                                              23.00,
                                            ),
                                            width: getHorizontalSize(
                                              45.00,
                                            ),
                                            alignment: Alignment.bottomLeft,
                                            margin: getMargin(
                                              left: 10,
                                              bottom: 13,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgG1248,
                                            height: getVerticalSize(
                                              27.00,
                                            ),
                                            width: getHorizontalSize(
                                              21.00,
                                            ),
                                            alignment: Alignment.topCenter,
                                            margin: getMargin(
                                              top: 15,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgG1272,
                                            height: getVerticalSize(
                                              27.00,
                                            ),
                                            width: getHorizontalSize(
                                              32.00,
                                            ),
                                            alignment: Alignment.topLeft,
                                            margin: getMargin(
                                              left: 17,
                                              top: 11,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: getVerticalSize(
                                85.00,
                              ),
                              width: getHorizontalSize(
                                35.00,
                              ),
                              margin: getMargin(
                                right: 61,
                                bottom: 6,
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPath270,
                                    height: getVerticalSize(
                                      85.00,
                                    ),
                                    width: getHorizontalSize(
                                      35.00,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgG272,
                                    height: getVerticalSize(
                                      38.00,
                                    ),
                                    width: getHorizontalSize(
                                      4.00,
                                    ),
                                    alignment: Alignment.topRight,
                                    margin: getMargin(
                                      top: 17,
                                      right: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: getVerticalSize(
                                115.00,
                              ),
                              width: getHorizontalSize(
                                73.00,
                              ),
                              margin: getMargin(
                                right: 10,
                                bottom: 3,
                              ),
                              padding: getPadding(
                                left: 21,
                                top: 23,
                                right: 21,
                                bottom: 23,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    ImageConstant.imgGroup19,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgG594,
                                    height: getVerticalSize(
                                      60.00,
                                    ),
                                    width: getHorizontalSize(
                                      27.00,
                                    ),
                                    alignment: Alignment.bottomLeft,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: getVerticalSize(
                                44.00,
                              ),
                              width: getHorizontalSize(
                                73.00,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPath348,
                                    height: getVerticalSize(
                                      44.00,
                                    ),
                                    width: getHorizontalSize(
                                      73.00,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPath774,
                                    height: getVerticalSize(
                                      26.00,
                                    ),
                                    width: getHorizontalSize(
                                      55.00,
                                    ),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(
                                      left: 5,
                                      bottom: 5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  146.00,
                ),
                width: getHorizontalSize(
                  382.00,
                ),
                margin: getMargin(
                  top: 73,
                  bottom: 5,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CarouselSlider.builder(
                      options: CarouselOptions(
                        height: getVerticalSize(
                          105.00,
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
                        return SliderfacialrecognitionItemWidget();
                      },
                    ),
                    CustomButton(
                      width: 84,
                      text: "Next",
                      margin: getMargin(
                        right: 1,
                      ),
                      alignment: Alignment.bottomRight,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 19,
                          bottom: 6,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: getVerticalSize(
                                27.00,
                              ),
                              width: getHorizontalSize(
                                38.00,
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
                                left: 108,
                                top: 12,
                                bottom: 8,
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
