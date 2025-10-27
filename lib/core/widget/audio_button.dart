import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';

class AudioButton extends StatelessWidget {
  const AudioButton({super.key, required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: AppColor.audioButton, size: 150),
      ),
    );
  }
}
