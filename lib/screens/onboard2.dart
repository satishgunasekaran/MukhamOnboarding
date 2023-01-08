import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:satish_s_application1/widgets/custom_button.dart';

class Onboard2 extends StatelessWidget {
  final String topImagePath;
  final String midImagePath;

  final String topline;
  final toplineColor;
  final CrossAxisAlignment toplineAlignment;
  final String terms;

  const Onboard2(
      {Key? key,
      required this.topImagePath,
      required this.midImagePath,
      required this.terms,
      required this.topline,
      required this.toplineColor,
      required this.toplineAlignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight,
          child: Flex(
            direction: Axis.vertical,
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  height: constraints.maxHeight * 0.4,
                  child: Stack(
                    children: <Widget>[
                      // SVG background widget
                      SvgPicture.asset(
                        topImagePath,
                        fit: BoxFit.cover,
                      ),
                      // Text widget, positioned at top-center
                      Positioned(
                          top: 150,
                          left: 15,
                          right: 50,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: toplineAlignment,
                              children: [
                                Text(topline,
                                    maxLines: 2,
                                    style: TextStyle(
                                      color: toplineColor,
                                      fontSize: 16,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400,
                                    )),
                                SizedBox(height: 10.0),
                                Container(
                                  height: 1,
                                  width: 250,
                                  color: toplineColor,
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Flexible(
                flex: 2,
                child: Container(
                  height: constraints.maxHeight * 0.4,
                  width: double.infinity,
                  child: Image.asset(
                    midImagePath,
                    // width: 100,
                    height: 250,
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  height: constraints.maxHeight * 0.4,
                  padding:
                      EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 10.0),
                        child: Column(
                          children: [
                            CustomButton(
                              height: 52,
                              width: 327,
                              text: "Get Started",
                              variant: ButtonVariant.FillIndigo80002,
                              shape: ButtonShape.CircleBorder26,
                              padding: ButtonPadding.PaddingAll15,
                              fontStyle: ButtonFontStyle.MulishRomanBold16,
                            ),
                            Container(
                              child: Text(
                                "By clicking it️, You are agreeing to terms and conditions for this app",
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.42,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
