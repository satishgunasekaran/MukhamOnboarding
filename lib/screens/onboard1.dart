import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboard1 extends StatelessWidget {
  final String topImagePath;
  final String midImagePath;

  final String topline;
  final toplineColor;
  final CrossAxisAlignment toplineAlignment;
  final TextAlign toplineTextAlignment;
  final String title;
  final String desc;
  final double? left;
  final double? right;
  const Onboard1({
    Key? key,
    required this.topImagePath,
    required this.midImagePath,
    required this.title,
    required this.desc,
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
                        duration: Duration(milliseconds: 500),
                        child: Column(
                          crossAxisAlignment: toplineAlignment,
                          children: [
                            Text(
                              topline,
                              textAlign: toplineTextAlignment,
                              maxLines: 2,
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
                            right: right == null
                                ? right
                                : right! + ((1 - _val) * 40),
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
                  padding:
                      EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Text(
                          title,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        desc,
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w300,
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
