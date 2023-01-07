import 'package:flutter/material.dart';
import 'package:satish_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SliderfacialrecognitionItemWidget extends StatelessWidget {
  SliderfacialrecognitionItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Facial Recognition!",
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
          Container(
            width: getHorizontalSize(
              382.00,
            ),
            margin: getMargin(
              top: 9,
            ),
            child: Text(
              "With the help of AI Vision based Attendance system,\nyou can now mark you attendance \nby capturing your face.",
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
        ],
      ),
    );
  }
}
