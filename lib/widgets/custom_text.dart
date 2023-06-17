import 'package:flutter/material.dart';
import 'package:webkeys_task/constant/constant.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;

  const CustomText({
    super.key,
    required this.text,
    this.textStyle = Constant.myTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}
