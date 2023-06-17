import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webkeys_task/constant/colors.dart';
import 'package:webkeys_task/constant/constant.dart';
import 'package:webkeys_task/feature/product_details.dart/widgets/header_product_details.dart';
import 'package:webkeys_task/feature/product_details.dart/widgets/main_title.dart';
import 'package:webkeys_task/widgets/add_to_order_widget.dart';
import 'package:webkeys_task/widgets/custom_text.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image:
                    AssetImage('${Constant.assetImagesPath}Cookies_Image.png'),
                fit: BoxFit.fill)),
        child: Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              colors: [ColorUitls.firstLinerColor, ColorUitls.secondLinerColor],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Constant.generalPaddingHorizantel, vertical: 44.h),
            child: Column(
              children: [
                const HeaderProductDetails(),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const MainTitle(),
                    SizedBox(
                      height: 22.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 239.w,
                          child: CustomText(
                            text:
                                'Decadent cocoa cookie with generous dark chocolate chips. Perfectly balanced for chocolate lovers. Enjoy your cookie, anytime.',
                            textStyle: Constant.myTextStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                color: ColorUitls.mainTextColor),
                          ),
                        ),
                        const AddToOrder(),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
