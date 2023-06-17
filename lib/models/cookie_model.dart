class CookieModel {
  final String cookieName;
  final bool isPremium;
  final double price;
  final String cookieImagePath;
  final double? priceBeforeDiscount;
  const CookieModel({
    required this.cookieImagePath,
    required this.cookieName,
    required this.isPremium,
    required this.price,
    this.priceBeforeDiscount,
  });

  CookieModel copyWith(
      {String? cookieName,
      bool? isPremium,
      double? price,
      String? cookieImagePath,
      double? priceBeforeDiscount}) {
    return CookieModel(
      cookieName: cookieName ?? this.cookieName,
      isPremium: isPremium ?? this.isPremium,
      price: price ?? this.price,
      priceBeforeDiscount: priceBeforeDiscount ?? this.priceBeforeDiscount,
      cookieImagePath: cookieImagePath ?? this.cookieImagePath,
    );
  }
}
