import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:webkeys_task/constant/colors.dart';
import 'package:webkeys_task/constant/constant.dart';
import 'package:webkeys_task/widgets/custom_text.dart';

class PremiumWidget extends StatelessWidget {
  const PremiumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 82.w,
      height: 20.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset('${Constant.assetIconsPath}crown.svg'),
          CustomText(
            text: 'PREMIUM',
            textStyle: Constant.myTextStyle.copyWith(
                color: ColorUitls.accentColor,
                fontWeight: FontWeight.w400,
                fontSize: 12.sp),
          )
        ],
      ),
    );
  }
}
