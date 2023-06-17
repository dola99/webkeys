import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webkeys_task/constant/constant.dart';
import 'package:webkeys_task/feature/home/view/widgets/header_cookie_premium.dart';
import 'package:webkeys_task/feature/home/view/widgets/listview_cookie_premium.dart';

class CookiePremiumSection extends StatelessWidget {
  const CookiePremiumSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 414.h,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Constant.generalPaddingHorizantel),
            child: HeaderCookiePremiumContainer(),
          ),
          SizedBox(
            height: 40.h,
          ),
          const ListViewCookiePremium()
        ],
      ),
    );
  }
}
