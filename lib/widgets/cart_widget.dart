import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:webkeys_task/bloc/cart/cart_cubit.dart';
import 'package:webkeys_task/constant/colors.dart';
import 'package:webkeys_task/constant/constant.dart';
import 'package:webkeys_task/widgets/custom_text.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 79.w,
      height: 102.h,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 79.h,
              height: 82.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: ColorUitls.mainTextColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocConsumer<CartCubit, CartState>(
                      buildWhen: (previous, current) =>
                          current.runtimeType == NewItemAddedToOrderState ||
                          previous.runtimeType == CartInitial,
                      listener: (context, state) {},
                      builder: (context, state) {
                        final cubit = CartCubit.get(context);
                        return CustomText(
                          text: cubit.itemsSelected.toString(),
                          textStyle: Constant.myTextStyle.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 20.sp,
                              color: ColorUitls.blackColor),
                        );
                      }),
                  CustomText(
                    text: 'Products',
                    textStyle: Constant.myTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 10.sp,
                        color: ColorUitls.blackColor),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 41.w,
              height: 40.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorUitls.blackColor,
              ),
              child: Stack(
                children: [
                  Center(
                    child: SvgPicture.asset(
                        '${Constant.assetIconsPath}Icon_ShoppingBag.svg'),
                  ),
                  const Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      radius: 5.5,
                      backgroundColor: ColorUitls.accentColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
