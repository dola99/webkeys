import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webkeys_task/feature/home/view/widgets/header_offer_section.dart';
import 'package:webkeys_task/feature/home/view/widgets/listview_offers_cookie.dart';

class OffersSections extends StatelessWidget {
  const OffersSections({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 342.w,
      child: Column(
        children: [
          const HeadersOffersSections(),
          SizedBox(
            height: 8.h,
          ),
          const ListViewCookieOffers(),
        ],
      ),
    );
  }
}
