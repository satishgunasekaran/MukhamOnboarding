import 'package:flutter/material.dart';
import 'package:satish_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SliderlanguageItemWidget extends StatelessWidget {
  SliderlanguageItemWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Get your attendance! ",
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
            251.00,
          ),
          margin: getMargin(
            top: 7,
          ),
          child: Text(
            "We keep track of your Attendance.\nCheck your Analytics here.",
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
    );
  }
}
