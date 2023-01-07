import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black90033 = fromHex('#33000000');

  static Color black900 = fromHex('#000000');

  static Color gray800 = fromHex('#3f3f3f');

  static Color indigo80002 = fromHex('#2e3192');

  static Color black90028 = fromHex('#28000000');

  static Color indigo80001 = fromHex('#2d3092');

  static Color black9003f = fromHex('#3f000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo800 = fromHex('#36387a');

  static Color gray50 = fromHex('#f9fbfc');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
