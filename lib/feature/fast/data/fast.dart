import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/entities/athkar_entity.dart';
import 'package:guide_muslim_kids/core/utils/app_images.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

List<AthkarEntity> getDataFast(BuildContext context) {
  final s = S.of(context);

  return [
    AthkarEntity(
      title: s.titleSeeingCrescent,
      content: s.seeingCrescent,
      imageCharacter: AppImage.imagesSeeingCrescent,
    ),
    AthkarEntity(
      title: s.titleIftarSupplication,
      content: s.iftarSupplication,
      imageCharacter: AppImage.imagesIftarSupplication,
    ),
    AthkarEntity(
      title: s.titleFastingArgumentResponse,
      content: s.fastingArgumentResponse,
      imageCharacter: AppImage.imagesFastingArgumentResponse,
    ),
    AthkarEntity(
      title: s.titleIftarAtHome,
      content: s.iftarAtHome,
      imageCharacter: AppImage.imagesIftarAtHome,
    ),
  ];
}
