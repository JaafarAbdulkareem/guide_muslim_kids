import 'package:flutter/material.dart';
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
        const SizedBox(height: 25),
        AldeenAudioButton(audioKey: data.audioKey),
      ],
    );
  }
}
