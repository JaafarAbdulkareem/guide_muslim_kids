import 'package:guide_muslim_kids/core/entities/athkar_entity.dart';
import 'package:guide_muslim_kids/core/utils/app_images.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';
import 'package:flutter/material.dart';

List<AthkarEntity> getDataDaily(BuildContext context) {
  final s = S.of(context);

  return [
    AthkarEntity(
      title: s.titleSleeping,
      content: s.sleeping,
      imageCharacter: AppImage.imagesSleeping,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleWakingUpFromSleep,
      content: s.wakingUpFromSleep,
      imageCharacter: AppImage.imagesWakingUpFromSleep,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleBeforeWudu,
      content: s.beforeWudu,
      imageCharacter: AppImage.imagesBeforeWudu,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleAfterWudu,
      content: s.afterWudu,
      imageCharacter: AppImage.imagesAfterWudu,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleAdhan,
      content: s.adhan,
      imageCharacter: AppImage.imagesAdhan,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleEnteringMarket,
      content: s.enteringMarket,
      imageCharacter: AppImage.imagesEnteringMarket,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleWearingClothes,
      content: s.wearingClothes,
      imageCharacter: AppImage.imagesWearingClothes,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleWearingNewClothes,
      content: s.wearingNewClothes,
      imageCharacter: AppImage.imagesWearingNewClothes,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleBeforeEating,
      content: s.beforeEating,
      imageCharacter: AppImage.imagesBeforeEating,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleAfterEating,
      content: s.afterEating,
      imageCharacter: AppImage.imagesAfterEating,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleEnteringBathroom,
      content: s.enteringBathroom,
      imageCharacter: AppImage.imagesEnteringBathroom,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleLeavingBathroom,
      content: s.leavingBathroom,
      imageCharacter: AppImage.imagesLeavingBathroom,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleLeavingHome,
      content: s.leavingHome,
      imageCharacter: AppImage.imagesLeavingHome,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleEnteringHome,
      content: s.enteringHome,
      imageCharacter: AppImage.imagesEnteringHome,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleEnteringMosque,
      content: s.enteringMosque,
      imageCharacter: AppImage.imagesEnteringMosque,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleLeavingMosque,
      content: s.leavingMosque,
      imageCharacter: AppImage.imagesLeavingMosque,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleRidingCar,
      content: s.ridingCar,
      imageCharacter: AppImage.imagesRidingCar,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleHearingThunder,
      content: s.hearingThunder,
      imageCharacter: AppImage.imagesHearingThunder,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleRainfall,
      content: s.rainfall,
      imageCharacter: AppImage.imagesRainfall,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleAfterRainfall,
      content: s.afterRainfall,
      imageCharacter: AppImage.imagesAfterRainfall,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleSneezing,
      content: s.sneezing,
      imageCharacter: AppImage.imagesSneezing,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleVisitingSick,
      content: s.visitingSick,
      imageCharacter: AppImage.imagesVisitingSick,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleKafaratAlMajlis,
      content: s.kafaratAlMajlis,
      imageCharacter: AppImage.imagesKafaratAlMajlis,
      imageBackground: AppImage.imagesPaper,
    ),
    AthkarEntity(
      title: s.titleDogsBarking,
      content: s.dogsBarking,
      imageCharacter: AppImage.imagesDogsBarking,
      imageBackground: AppImage.imagesPaper,
    ),
  ];
}
