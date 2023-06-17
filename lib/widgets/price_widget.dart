import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webkeys_task/constant/colors.dart';
import 'package:webkeys_task/constant/constant.dart';
import 'package:webkeys_task/widgets/custom_text.dart';

class PriceWidget extends StatelessWidget {
  final double price;
  const PriceWidget({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 74.w,
      height: 22.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: price.toString(),
            textStyle: Constant.myTextStyle.copyWith(
                color: ColorUitls.mainTextColor,
                fontWeight: FontWeight.w400,
                fontSize: 16),
          ),
          SizedBox(
            width: 3.w,
          ),
          CustomText(
            text: 'USD',
            textStyle: Constant.myTextStyle.copyWith(
                color: ColorUitls.mainTextColor,
                fontWeight: FontWeight.w400,
                fontSize: 16),
          )
        ],
      ),
    );
  }
}
