import 'package:flutter/material.dart';
import 'package:webkeys_task/constant/colors.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget child;
  const BackgroundContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ColorUitls.backgroundColor,
              ColorUitls.linearbackgroundColor.withOpacity(.95)
            ],
          ),
        ),
        child: child);
  }
}
