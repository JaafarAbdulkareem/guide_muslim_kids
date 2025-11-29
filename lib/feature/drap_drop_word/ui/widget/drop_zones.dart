import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/enum_letter_type.dart';
import 'package:guide_muslim_kids/feature/drap_drop_word/ui/widget/target_box.dart';

class DropZones extends StatelessWidget {
  const DropZones({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildDropZone(
            context,
            label: "الحرف ساكن",
            color: AppColor.dropZoneBGSakin,
            borderColor: AppColor.dropZoneBorderSakin,
            type: LetterType.sakin,
            icon: Icons.pause_circle_outline,
          ),
          const SizedBox(width: 16),
          _buildDropZone(
            context,
            label: "الحرف متحرك",
            color: AppColor.dropZoneBGMutaharrik,
            borderColor: AppColor.dropZoneBorderMutaharrik,
            type: LetterType.mutaharrik,
            icon: Icons.play_circle_outline,
          ),
        ],
      ),
    );
  }

  Widget _buildDropZone(
    BuildContext context, {
    required String label,
    required Color color,
    required Color borderColor,
    required LetterType type,
    required IconData icon,
  }) {
    return Expanded(
      child: TargetBox(
        label: label,
        color: color,
        borderColor: borderColor,
        targetType: type,
        icon: icon,
      ),
    );
  }
}
