import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webkeys_task/constant/colors.dart';
import 'package:webkeys_task/constant/constant.dart';
import 'package:webkeys_task/widgets/custom_text.dart';
import 'package:webkeys_task/widgets/see_more_widget.dart';

class HeaderCookiePremiumContainer extends StatelessWidget {
  const HeaderCookiePremiumContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 96.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 52.h,
            child: CustomText(
              text: 'Cookies',
              textStyle: Constant.myTextStyle.copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: 42.sp,
                  color: ColorUitls.mainTextColor),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: 'Premium',
                textStyle: Constant.myTextStyle.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 28.sp,
                    color: ColorUitls.accentColor),
              ),
              // ignore: prefer_const_constructors
              SeeMoreWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
