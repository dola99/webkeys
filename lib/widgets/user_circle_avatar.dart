import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webkeys_task/constant/colors.dart';
import 'package:webkeys_task/constant/constant.dart';
import 'package:webkeys_task/widgets/custom_text.dart';

class CircleAvater extends StatelessWidget {
  const CircleAvater({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24.5.w,
          backgroundImage:
              const AssetImage('${Constant.assetImagesPath}Avatar.png'),
        ),
        SizedBox(
          width: 16.w,
        ),
        SizedBox(
            width: 102.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: 'Ahmed',
                  textStyle: Constant.myTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: ColorUitls.mainTextColor),
                ),
                CustomText(
                  text: 'Elfayoumi',
                  textStyle: Constant.myTextStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: ColorUitls.mainTextColor),
                ),
              ],
            ))
      ],
    );
  }
}
