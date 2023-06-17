import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:webkeys_task/constant/colors.dart';
import 'package:webkeys_task/constant/constant.dart';
import 'package:webkeys_task/widgets/custom_text.dart';

class AddToOrder extends StatelessWidget {
  const AddToOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 79.w,
      height: 128.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: ColorUitls.mainTextColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.h),
        child: Column(
          children: [
            SizedBox(
              height: 8.h,
            ),
            Container(
              width: 40.w,
              height: 40.w,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: ColorUitls.blackColor),
              child: Center(
                child:
                    SvgPicture.asset('${Constant.assetIconsPath}box-add.svg'),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            const CircleAvatar(
              radius: 5.5,
              backgroundColor: ColorUitls.accentColor,
            ),
            SizedBox(
              height: 8.h,
            ),
            SizedBox(
              child: CustomText(
                text: 'Add to Order',
                textAlign: TextAlign.center,
                textStyle: Constant.myTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    color: ColorUitls.blackColor,
                    fontSize: 12.sp),
              ),
            )
          ],
        ),
      ),
    );
  }
}
