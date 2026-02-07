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
      children: [
        data.image != null
            ? AspectRatio(
                aspectRatio: 1.2,
                child: Image.asset(data.image!, fit: BoxFit.contain),
              )
            : Container(),
        SizedBox(height: 5.h),
        AldeenAudioButton(audioKey: data.audioKey),
      ],
    );
  }
}
