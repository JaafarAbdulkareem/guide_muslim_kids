import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/entities/athkar_entity.dart';
import 'package:guide_muslim_kids/core/utils/app_images.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

List<AthkarEntity> getDataPrayer(BuildContext context) {
  final s = S.of(context);

  return [
    AthkarEntity(
      title: s.titleOpeningSupplication,
      content: s.openingSupplication,
      imageCharacter: AppImage.imagesOpeningSupplication,
    ),
    AthkarEntity(
      title: s.titleRuku,
      content: s.ruku,
      imageCharacter: AppImage.imagesRuku,
    ),
    AthkarEntity(
      title: s.titleRisingFromRuku,
      content: s.risingFromRuku,
      imageCharacter: AppImage.imagesRisingFromRuku,
    ),
    AthkarEntity(
      title: s.titleSujood,
      content: s.sujood,
      imageCharacter: AppImage.imagesSujood,
    ),
    AthkarEntity(
      title: s.titleBetweenTwoSujoods,
      content: s.betweenTwoSujoods,
      imageCharacter: AppImage.imagesTashahhud,
    ),
    AthkarEntity(
      title: s.titleFirstTashahhud,
      content: s.firstTashahhud,
      imageCharacter: AppImage.imagesTashahhud,
    ),
    AthkarEntity(
      title: s.titleFinalTashahhud,
      content: s.finalTashahhud,
      imageCharacter: AppImage.imagesTashahhud,
    ),
    AthkarEntity(
      title: s.titleBeforeSalam,
      content: s.beforeSalam,
      imageCharacter: AppImage.imagesTashahhud,
    ),
    AthkarEntity(
      title: s.titleAfterPrayer,
      content: s.afterPrayer,
      imageCharacter: AppImage.imagesAfterPrayer,
    ),
    AthkarEntity(
      title: s.titleProstrationOfRecitation,
      content: s.prostrationOfRecitation,
      imageCharacter: AppImage.imagesSujood,
    ),
    AthkarEntity(
      title: s.titleQunootWitr,
      content: s.qunootWitr,
      imageCharacter: AppImage.imagesQunootWitr,
    ),
  ];
}
