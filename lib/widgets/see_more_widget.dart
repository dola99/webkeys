import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webkeys_task/constant/colors.dart';
import 'package:webkeys_task/constant/constant.dart';
import 'package:webkeys_task/widgets/custom_text.dart';

class SeeMoreWidget extends StatelessWidget {
  final void Function()? onTap;
  const SeeMoreWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: 'See More',
            textStyle: Constant.myTextStyle.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: ColorUitls.accentColor),
          ),
          SizedBox(
            width: 14.w,
          ),
          const Icon(
            Icons.arrow_forward,
            color: ColorUitls.accentColor,
          )
        ],
      ),
    );
  }
}
