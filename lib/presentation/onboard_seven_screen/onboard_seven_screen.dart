import 'package:flutter/material.dart';
import 'package:satish_s_application1/core/app_export.dart';
import 'package:satish_s_application1/widgets/custom_button.dart';

class OnboardSevenScreen extends StatelessWidget {
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
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup15,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width,
                      padding: getPadding(
                        left: 20,
                        top: 115,
                        right: 20,
                        bottom: 115,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              228.00,
                            ),
                            child: Text(
                              "We are dedicated to protecting your privacy and upholding your trust.",
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
                              bottom: 74,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgUndrawclickhererey6uq,
                height: getSize(
                  260.00,
                ),
                width: getSize(
                  260.00,
                ),
                margin: getMargin(
                  top: 25,
                ),
              ),
              CustomButton(
                height: 52,
                width: 327,
                text: "Get Started",
                margin: getMargin(
                  top: 106,
                ),
                variant: ButtonVariant.FillIndigo80002,
                shape: ButtonShape.CircleBorder26,
                padding: ButtonPadding.PaddingAll15,
                fontStyle: ButtonFontStyle.MulishRomanBold16,
              ),
              Container(
                width: getHorizontalSize(
                  243.00,
                ),
                margin: getMargin(
                  top: 18,
                  bottom: 5,
                ),
                child: Text(
                  "by clicking it️, You are agreeing to terms and conditions for this app",
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstant.black900,
                    fontSize: getFontSize(
                      14,
                    ),
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.42,
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
