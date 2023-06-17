import 'package:flutter/material.dart';
import 'package:webkeys_task/widgets/back_button.dart';
import 'package:webkeys_task/widgets/cart_widget.dart';

class HeaderProductDetails extends StatelessWidget {
  const HeaderProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [CustomBackButton(), CartWidget()],
    );
  }
}
