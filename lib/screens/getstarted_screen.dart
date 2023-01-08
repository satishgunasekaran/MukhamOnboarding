import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:satish_s_application1/screens/login_screen.dart';

class Onboard2 extends StatelessWidget {
  final String topImagePath;
  final String midImagePath;

  final String topline;
  final toplineColor;
  final CrossAxisAlignment toplineAlignment;
  final String terms;
  final double? left;
  final double? right;

  final TextAlign toplineTextAlignment;

  const Onboard2({
    Key? key,
    required this.topImagePath,
    required this.midImagePath,
    required this.terms,
    required this.topline,
    required this.toplineColor,
    required this.toplineAlignment,
    required this.toplineTextAlignment,
    this.left = 15.0,
    this.right = null,
  }) : super(key: key);

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
                      TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0, end: 1),
                        duration: Duration(milliseconds: 100),
                        child: Column(
                          crossAxisAlignment: toplineAlignment,
                          children: [
                            Text(
                              topline,
                              textAlign: toplineTextAlignment,
                              maxLines: 2,
                              style: TextStyle(color: toplineColor),
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              height: 1,
                              width: 250,
                              color: toplineColor,
                            ),
                          ],
                        ),
                        builder:
                            (BuildContext context, double _val, Widget? child) {
                          return Positioned(
                            top: 150,
                            left: left == null ? left : -(1 - _val) * 30,
                            right: right == null ? right : right! + (_val * 10),
                            width: 250,
                            child: Container(
                              child: Opacity(
                                opacity: _val,
                                child: Container(
                                  margin: EdgeInsets.only(left: _val * 20),
                                  // padding: EdgeInsets.only(top: _val * 20),
                                  child: child,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Flexible(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  height: constraints.maxHeight * 0.32,
                  width: double.infinity,
                  child: Image.asset(
                    midImagePath,
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  height: constraints.maxHeight * 0.4,
                  margin: EdgeInsets.only(top: 50),
                  padding:
                      EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 10.0),
                        child: TextButton(
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 120.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                backgroundColor: Color(0xFF2E3192)),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Scaffold(body: LoginScreen())));
                            },
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 2.0,
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
              )
            ],
          ),
        );
      },
    );
  }
}
