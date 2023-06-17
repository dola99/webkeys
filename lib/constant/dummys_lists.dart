import 'package:webkeys_task/constant/constant.dart';
import 'package:webkeys_task/models/cookie_model.dart';

class DummyDate {
  static CookieModel cookieModel = const CookieModel(
      cookieImagePath: '${Constant.assetImagesPath}cookie1.png',
      cookieName: 'Chocolate Lovers',
      isPremium: true,
      price: 20);

  final List<CookieModel> cookiePremiumList = [
    cookieModel,
    cookieModel.copyWith(
        cookieImagePath: '${Constant.assetImagesPath}cookie2.png',
        cookieName: 'Chocolate Lovers',
        price: 5),
    cookieModel.copyWith(
      cookieImagePath: '${Constant.assetImagesPath}cookie1.png',
      cookieName: 'Chocolate Not Lovers',
      price: 10,
    ),
  ];

  final List<CookieModel> cookieOffersList = [
    cookieModel.copyWith(
        cookieImagePath: '${Constant.assetImagesPath}cookie2.png',
        cookieName: 'Chocolate Lovers',
        priceBeforeDiscount: 10,
        price: 5),
  ];
}
