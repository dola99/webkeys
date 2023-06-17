import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webkeys_task/constant/colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: Container(
        height: 44.h,
        width: 44.h,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: ColorUitls.mainTextColor,
        ),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
