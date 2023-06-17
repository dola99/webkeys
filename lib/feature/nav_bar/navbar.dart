import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webkeys_task/bloc/navbar/navbar_cubit.dart';
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
        BlocConsumer<NavbarCubit, NavbarState>(
          buildWhen: (previous, current) =>
              current.runtimeType == NavBarTabSelected ||
              previous.runtimeType == NavbarInitial,
          listener: (context, state) {},
          builder: (context, state) {
            final cubit = NavbarCubit.get(context);
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavBarTab(
                    tabID: 0,
                    iconPath: 'Icon_Home.svg',
                    nameOfTab: 'Home',
                    isSelected: cubit.selectedTabID == 0),
                NavBarTab(
                    tabID: 1,
                    iconPath: 'Icon_Search.svg',
                    nameOfTab: 'Search',
                    isSelected: cubit.selectedTabID == 1),
                NavBarTab(
                    tabID: 2,
                    iconPath: 'Icon_Premium.svg',
                    nameOfTab: 'Premium',
                    isSelected: cubit.selectedTabID == 2),
              ],
            );
          },
        )
      ]),
    );
  }
}
