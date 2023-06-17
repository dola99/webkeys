import 'package:flutter/material.dart';
import 'package:webkeys_task/constant/colors.dart';
import 'package:webkeys_task/constant/constant.dart';
import 'package:webkeys_task/widgets/custom_text.dart';
import 'package:webkeys_task/widgets/see_more_widget.dart';

class HeadersOffersSections extends StatelessWidget {
  const HeadersOffersSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: 'Offers',
          textStyle: Constant.myTextStyle.copyWith(
              fontWeight: FontWeight.w300,
              fontSize: 42,
              color: ColorUitls.mainTextColor),
        ),
        const SeeMoreWidget(),
      ],
    );
  }
}
