import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_images.dart';
import 'package:guide_muslim_kids/core/utils/audio_keys.dart';
import 'package:guide_muslim_kids/feature/Aldeen/logic/aldeen_entity.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

List<AldeenEntity> getDataAldeen(BuildContext context) {
  final s = S.of(context);
  return [
    AldeenEntity(
      title: s.aldeenIslam,
      image: AppImage.imagesIslam,
      audioKey: AudioKeys.islam,
    ),
    AldeenEntity(
      title: s.aldeenIman,
      image: AppImage.imagesIman,
      audioKey: AudioKeys.iman,
    ),
    AldeenEntity(
      title: s.aldeenIhsan,
      content: s.Ihsan,
      audioKey: AudioKeys.ihsan,
    ),
  ];
}
