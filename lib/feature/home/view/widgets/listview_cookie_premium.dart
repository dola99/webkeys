import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webkeys_task/constant/constant.dart';
import 'package:webkeys_task/constant/dummys_lists.dart';
import 'package:webkeys_task/feature/home/view/widgets/cookie_premium_card.dart';

class ListViewCookiePremium extends StatelessWidget {
  const ListViewCookiePremium({super.key});

  @override
  Widget build(BuildContext context) {
    final premiumCookieList = DummyDate().cookiePremiumList;
    return SizedBox(
        width: double.infinity,
        height: 278.h,
        child: ListView.separated(
          separatorBuilder: (context, index) =>
              const SizedBox(width: Constant.generalPaddingHorizantel),
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(
              horizontal: Constant.generalPaddingHorizantel),
          itemBuilder: (context, index) =>
              CookiePremiumCard(cookieModel: premiumCookieList[index]),
          itemCount: premiumCookieList.length,
        ));
  }
}
