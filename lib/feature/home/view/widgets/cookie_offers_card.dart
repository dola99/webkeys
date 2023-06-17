import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webkeys_task/constant/colors.dart';
import 'package:webkeys_task/constant/constant.dart';
import 'package:webkeys_task/models/cookie_model.dart';
import 'package:webkeys_task/widgets/custom_text.dart';
import 'package:webkeys_task/widgets/premium_widget.dart';

class CookieOffersCard extends StatelessWidget {
  final CookieModel cookieModel;
  const CookieOffersCard({super.key, required this.cookieModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      width: double.infinity,
      height: 132.h,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 132.h,
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
              child: Row(
                children: [
                  Container(
                    width: 77.w,
                    height: 77.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(cookieModel.cookieImagePath))),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 102.w,
                            child: CustomText(
                              text: cookieModel.cookieName,
                              textStyle: Constant.myTextStyle.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp,
                                  color: ColorUitls.mainTextColor),
                            ),
                          ),
                          CustomText(
                            text: '${cookieModel.priceBeforeDiscount}USD',
                            textStyle: Constant.myTextStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                decoration: TextDecoration.lineThrough,
                                color: ColorUitls.mainTextColor),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const PremiumWidget(),
                          SizedBox(
                            width: 22.w,
                          ),
                          CustomText(
                            text: '${cookieModel.price}USD',
                            textStyle: Constant.myTextStyle.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                                color: ColorUitls.mainTextColor),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
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
          )
        ],
      ),
    );
  }
}
