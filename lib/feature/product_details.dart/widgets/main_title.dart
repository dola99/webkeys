import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webkeys_task/constant/colors.dart';
import 'package:webkeys_task/constant/constant.dart';
import 'package:webkeys_task/widgets/custom_text.dart';
import 'package:webkeys_task/widgets/premium_widget.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 342.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const PremiumWidget(),
          SizedBox(
            height: 89.h,
            child: CustomText(
              text: 'Cookies',
              textStyle: Constant.myTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 80.sp,
                  color: ColorUitls.mainTextColor),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          CustomText(
            text: 'Choco Lovers',
            textStyle: Constant.myTextStyle.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 24.sp,
                color: ColorUitls.mainTextColor),
          )
        ],
      ),
    );
  }
}
