import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webkeys_task/constant/dummys_lists.dart';
import 'package:webkeys_task/feature/home/view/widgets/cookie_offers_card.dart';

class ListViewCookieOffers extends StatelessWidget {
  const ListViewCookieOffers({super.key});

  @override
  Widget build(BuildContext context) {
    final offerCookieList = DummyDate().cookieOffersList;
    return SizedBox(
      height: offerCookieList.length * 132.h,
      width: double.infinity,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) =>
            CookieOffersCard(cookieModel: offerCookieList[index]),
        itemCount: offerCookieList.length,
      ),
    );
  }
}
