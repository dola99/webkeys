import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webkeys_task/constant/font_uitls.dart';

class Constant {
  static const generalPaddingHorizantel = 24.0;

  static const assetImagesPath = 'assets/images/';
  static const assetIconsPath = 'assets/icons/';

  static const TextStyle myTextStyle = TextStyle(
    fontFamily: FontUilts.poppinsFont,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.2,
    color: Colors.black,
  );

  double convertFigmaFontSizeToSp(double figmaFontSize, BuildContext context) {
    final screenWidth = ScreenUtil().screenWidth;
    final pixelDensity = screenWidth /
        375; // Assuming Figma design is based on iPhone 6/7/8 screen width (375 pixels)

    // Convert Figma font size in pixels to sp
    final spFontSize =
        figmaFontSize * pixelDensity / MediaQuery.textScaleFactorOf(context);

    return spFontSize;
  }
}
