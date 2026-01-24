import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_muslim_kids/feature/Aldeen/logic/aldeen_entity.dart';
import 'package:guide_muslim_kids/feature/Aldeen/ui/widget/aldeen_audio_button.dart';

class AldeenDetailItem extends StatelessWidget {
  const AldeenDetailItem({super.key, required this.data});
  final AldeenEntity data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        data.image != null
            ? Image.asset(data.image!, fit: BoxFit.fill)
            : Container(),
        SizedBox(height: 25.h),
        AldeenAudioButton(audioKey: data.audioKey),
      ],
    );
  }
}
