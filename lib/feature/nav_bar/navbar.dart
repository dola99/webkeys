import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webkeys_task/constant/colors.dart';
import 'package:webkeys_task/feature/nav_bar/navbar_tabs.dart';

class NavBarHome extends StatelessWidget {
  const NavBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 117.h,
      width: double.infinity,
      child: Stack(children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 78.h,
            decoration: const BoxDecoration(
              color: ColorUitls.navBarColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(
                  24,
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            NavBarTab(
                iconPath: 'Icon_Home.svg', nameOfTab: 'Home', isSelected: true),
            NavBarTab(
                iconPath: 'Icon_Search.svg',
                nameOfTab: 'Search',
                isSelected: false),
            NavBarTab(
                iconPath: 'Icon_Premium.svg',
                nameOfTab: 'Premium',
                isSelected: false),
          ],
        )
      ]),
    );
  }
}
