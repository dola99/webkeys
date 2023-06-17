import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webkeys_task/constant/colors.dart';
import 'package:webkeys_task/constant/constant.dart';
import 'package:webkeys_task/feature/product_details.dart/view/product_screen.dart';
import 'package:webkeys_task/models/cookie_model.dart';
import 'package:webkeys_task/widgets/custom_text.dart';
import 'package:webkeys_task/widgets/premium_widget.dart';
import 'package:webkeys_task/widgets/price_widget.dart';

class CookiePremiumCard extends StatelessWidget {
  final CookieModel cookieModel;
  const CookiePremiumCard({super.key, required this.cookieModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 163.w,
      height: 278.h,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 163.w,
              height: 171.h,
              decoration: BoxDecoration(
                color: ColorUitls.backgroundContainerColor.withOpacity(0.90),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(72)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Constant.generalPaddingHorizantel),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 102.w,
                      height: 43.h,
                      child: CustomText(
                        text: cookieModel.cookieName,
                        textStyle: Constant.myTextStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: ColorUitls.mainTextColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    if (cookieModel.isPremium) const PremiumWidget(),
                    if (cookieModel.isPremium)
                      SizedBox(
                        height: 12.h,
                      ),
                    PriceWidget(
                      price: cookieModel.price,
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: 130.h,
              height: 130.h,
              child: Image.asset(cookieModel.cookieImagePath),
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ProductDetailsScreen(),
            )),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 49.w,
                height: 49.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorUitls.blackColor,
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_forward,
                    size: 28,
                    color: ColorUitls.mainTextColor,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
