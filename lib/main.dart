import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webkeys_task/constant/colors.dart';

import 'feature/product_details.dart/view/product_screen.dart';

void main() {
  runApp(const StartPoint());
}

class StartPoint extends StatelessWidget {
  const StartPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      useInheritedMediaQuery: false,
      splitScreenMode: false,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: ColorUitls.backgroundColor,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const ProductDetailsScreen(),
    );
  }
}
