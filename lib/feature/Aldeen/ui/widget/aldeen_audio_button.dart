import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_images.dart';
import 'package:guide_muslim_kids/core/widget/bloc_audio_buttons.dart';

class AldeenAudioButton extends StatelessWidget {
  const AldeenAudioButton({super.key, required this.audioKey});

  final String audioKey;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 6,
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage.imagesPaper),
            fit: BoxFit.fill,
          ),
        ),
        child: BlocAudioButtons(audioKey: audioKey),
      ),
    );
  }
}
