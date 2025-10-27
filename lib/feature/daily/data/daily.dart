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
    ),
    AthkarEntity(
      title: s.titleWakingUpFromSleep,
      content: s.wakingUpFromSleep,
      imageCharacter: AppImage.imagesWakingUpFromSleep,
    ),
    AthkarEntity(
      title: s.titleBeforeWudu,
      content: s.beforeWudu,
      imageCharacter: AppImage.imagesBeforeWudu,
    ),
    AthkarEntity(
      title: s.titleAfterWudu,
      content: s.afterWudu,
      imageCharacter: AppImage.imagesAfterWudu,
    ),
    AthkarEntity(
      title: s.titleAdhan,
      content: s.adhan,
      imageCharacter: AppImage.imagesAdhan,
    ),
    AthkarEntity(
      title: s.titleEnteringMarket,
      content: s.enteringMarket,
      imageCharacter: AppImage.imagesEnteringMarket,
    ),
    AthkarEntity(
      title: s.titleWearingClothes,
      content: s.wearingClothes,
      imageCharacter: AppImage.imagesWearingClothes,
    ),
    AthkarEntity(
      title: s.titleWearingNewClothes,
      content: s.wearingNewClothes,
      imageCharacter: AppImage.imagesWearingNewClothes,
    ),
    AthkarEntity(
      title: s.titleBeforeEating,
      content: s.beforeEating,
      imageCharacter: AppImage.imagesBeforeEating,
    ),
    AthkarEntity(
      title: s.titleAfterEating,
      content: s.afterEating,
      imageCharacter: AppImage.imagesAfterEating,
    ),
    AthkarEntity(
      title: s.titleEnteringBathroom,
      content: s.enteringBathroom,
      imageCharacter: AppImage.imagesEnteringBathroom,
    ),
    AthkarEntity(
      title: s.titleLeavingBathroom,
      content: s.leavingBathroom,
      imageCharacter: AppImage.imagesLeavingBathroom,
    ),
    AthkarEntity(
      title: s.titleLeavingHome,
      content: s.leavingHome,
      imageCharacter: AppImage.imagesLeavingHome,
    ),
    AthkarEntity(
      title: s.titleEnteringHome,
      content: s.enteringHome,
      imageCharacter: AppImage.imagesEnteringHome,
    ),
    AthkarEntity(
      title: s.titleEnteringMosque,
      content: s.enteringMosque,
      imageCharacter: AppImage.imagesEnteringMosque,
    ),
    AthkarEntity(
      title: s.titleLeavingMosque,
      content: s.leavingMosque,
      imageCharacter: AppImage.imagesLeavingMosque,
    ),
    AthkarEntity(
      title: s.titleRidingCar,
      content: s.ridingCar,
      imageCharacter: AppImage.imagesRidingCar,
    ),
    AthkarEntity(
      title: s.titleHearingThunder,
      content: s.hearingThunder,
      imageCharacter: AppImage.imagesHearingThunder,
    ),
    AthkarEntity(
      title: s.titleRainfall,
      content: s.rainfall,
      imageCharacter: AppImage.imagesRainfall,
    ),
    AthkarEntity(
      title: s.titleAfterRainfall,
      content: s.afterRainfall,
      imageCharacter: AppImage.imagesAfterRainfall,
    ),
    AthkarEntity(
      title: s.titleSneezing,
      content: s.sneezing,
      imageCharacter: AppImage.imagesSneezing,
    ),
    AthkarEntity(
      title: s.titleVisitingSick,
      content: s.visitingSick,
      imageCharacter: AppImage.imagesVisitingSick,
    ),
    AthkarEntity(
      title: s.titleVisitingGraves,
      content: s.visitingGraves,
      imageCharacter: AppImage.imagesVisitingGraves,
    ),
    AthkarEntity(
      title: s.titleKafaratAlMajlis,
      content: s.kafaratAlMajlis,
      imageCharacter: AppImage.imagesKafaratAlMajlis,
    ),
    AthkarEntity(
      title: s.titleDogsBarking,
      content: s.dogsBarking,
      imageCharacter: AppImage.imagesDogsBarking,
    ),
  ];
}
