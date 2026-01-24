import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_lottie.dart';
import 'package:lottie/lottie.dart';

class CelebarationWidget extends StatelessWidget {
  const CelebarationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      top: 0,
      child: IgnorePointer(
        child: Lottie.asset(AppLottie.celebration, repeat: false),
      ),
    );
  }
}
