import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webkeys_task/constant/constant.dart';
import 'package:webkeys_task/feature/home/view/componets/cookies_premium_section.dart';
import 'package:webkeys_task/feature/home/view/componets/home_screen_header.dart';
import 'package:webkeys_task/feature/nav_bar/navbar.dart';
import 'package:webkeys_task/feature/home/view/componets/offers_sections.dart';
import 'package:webkeys_task/widgets/background_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const NavBarHome(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: BackgroundContainer(
          child: Column(
            children: [
              SizedBox(
                height: 44.h,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Constant.generalPaddingHorizantel),
                child: HomeScreenHeader(),
              ),
              SizedBox(
                height: 16.h,
              ),
              const CookiePremiumSection(),
              SizedBox(
                height: 16.h,
              ),
              const OffersSections(),
              SizedBox(
                height: 130.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
