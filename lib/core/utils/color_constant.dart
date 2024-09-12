import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA700B2 = fromHex('#b2ffffff');

  static Color gray90014 = fromHex('#14111827');

  static Color bluegray50 = fromHex('#f1f1f1');

  static Color indigoA100 = fromHex('#887ef9');

  static Color blueA200 = fromHex('#3b82f6');

  static Color gray90019 = fromHex('#19111827');

  static Color lightBlue900 = fromHex('#1e6a92');

  static Color deepOrange40026 = fromHex('#26ff8142');

  static Color greenA700 = fromHex('#22c55e');

  static Color teal900 = fromHex('#00334e');

  static Color gray9000a = fromHex('#0a111827');

  static Color gray20000 = fromHex('#00e5e7eb');

  static Color primary7e = fromHex('#7e5766c7');

  static Color gray9000f = fromHex('#0f111827');

  static Color deepOrange4001e = fromHex('#1eff8142');

  static Color whiteA7004c = fromHex('#4cffffff');

  static Color gray60066 = fromHex('#666b727f');

  static Color gray600 = fromHex('#6b7280');

  static Color gray90026 = fromHex('#26111827');

  static Color redA200 = fromHex('#ff4747');

  static Color gray200 = fromHex('#e5e7eb');

  static Color gray201 = fromHex('#eaeaea');

  static Color primary = fromHex('#5766c7');

  static Color gray9001e = fromHex('#1e111827');

  static Color indigo1004c = fromHex('#4cbec6ff');

  static Color gray6001e = fromHex('#1e6b727f');

  static Color whiteA700 = fromHex('#ffffff');

  static Color whiteA7001e = fromHex('#1effffff');

  static Color gray90033 = fromHex('#33111827');

  static Color gray60019 = fromHex('#196b727f');

  static Color primary75 = fromHex('#755766c7');

  static Color gray60014 = fromHex('#146b727f');

  static Color gray50 = fromHex('#f8f8f8');

  static Color whiteA70033 = fromHex('#33ffffff');

  static Color gray6000a = fromHex('#0a6b727f');

  static Color gray6000f = fromHex('#0f6b727f');

  static Color gray90005 = fromHex('#05111827');

  static Color gray902 = fromHex('#111827');

  static Color gray90000 = fromHex('#00111827');

  static Color gray900 = fromHex('#171725');

  static Color bluegray100 = fromHex('#d1d5db');

  static Color gray101 = fromHex('#f3f4f6');

  static Color gray80033 = fromHex('#334e4e4e');

  static Color gray102 = fromHex('#f3f4ff');

  static Color gray90007 = fromHex('#07111827');

  static Color gray100 = fromHex('#f3f3f3');

  static Color tealA400 = fromHex('#2dd4bf');

  static Color gray60005 = fromHex('#056b727f');

  static Color gray9003f = fromHex('#3f111827');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color deepOrange40019 = fromHex('#19ff8142');

  static Color bluegray301 = fromHex('#9ca3af');

  static Color bluegray300 = fromHex('#9ca4ab');

  static Color gray900B2 = fromHex('#b2111827');

  static Color gray9003d = fromHex('#3d111827');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
