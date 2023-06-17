import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:webkeys_task/constant/colors.dart';
import 'package:webkeys_task/constant/constant.dart';
import 'package:webkeys_task/widgets/custom_text.dart';

class NavBarTab extends StatelessWidget {
  final String iconPath;
  final String nameOfTab;
  final bool isSelected;
  const NavBarTab(
      {super.key,
      required this.iconPath,
      required this.nameOfTab,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: InkWell(
        child: SizedBox(
          height: 90.h,
          width: 64.w,
          child: Column(
            children: [
              Container(
                width: 64.w,
                height: 64.h,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: ColorUitls.navBarTabColor),
                child: Center(
                  child:
                      SvgPicture.asset('${Constant.assetIconsPath}$iconPath'),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomText(
                text: nameOfTab,
                textStyle: Constant.myTextStyle.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    color: isSelected
                        ? ColorUitls.accentColor
                        : ColorUitls.navBarTabColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
