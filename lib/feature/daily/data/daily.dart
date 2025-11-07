import 'package:guide_muslim_kids/core/entities/athkar_entity.dart';
import 'package:guide_muslim_kids/core/utils/app_images.dart';
import 'package:guide_muslim_kids/core/utils/audio_keys.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';
import 'package:flutter/material.dart';

List<AthkarEntity> getDataDaily(BuildContext context) {
  final s = S.of(context);

  return [
    AthkarEntity(
      title: s.titleSleeping,
      content: s.sleeping,
      imageCharacter: AppImage.imagesSleeping,
      audioKey: AudioKeys.sleeping,
    ),
    AthkarEntity(
      title: s.titleWakingUpFromSleep,
      content: s.wakingUpFromSleep,
      imageCharacter: AppImage.imagesWakingUpFromSleep,
      audioKey: AudioKeys.wakingUpFromSleep,
    ),
    AthkarEntity(
      title: s.titleBeforeWudu,
      content: s.beforeWudu,
      imageCharacter: AppImage.imagesBeforeWudu,
      audioKey: AudioKeys.beforeWudu,
    ),
    AthkarEntity(
      title: s.titleAfterWudu,
      content: s.afterWudu,
      imageCharacter: AppImage.imagesAfterWudu,
      audioKey: AudioKeys.afterWudu,
    ),
    AthkarEntity(
      title: s.titleAdhan,
      content: s.adhan,
      imageCharacter: AppImage.imagesAdhan,
      audioKey: AudioKeys.adhan,
    ),
    AthkarEntity(
      title: s.titleEnteringMarket,
      content: s.enteringMarket,
      imageCharacter: AppImage.imagesEnteringMarket,
      audioKey: AudioKeys.enteringMarket,
    ),
    AthkarEntity(
      title: s.titleWearingClothes,
      content: s.wearingClothes,
      imageCharacter: AppImage.imagesWearingClothes,
      audioKey: AudioKeys.wearingClothes,
    ),
    AthkarEntity(
      title: s.titleWearingNewClothes,
      content: s.wearingNewClothes,
      imageCharacter: AppImage.imagesWearingNewClothes,
      audioKey: AudioKeys.wearingNewClothes,
    ),
    AthkarEntity(
      title: s.titleBeforeEating,
      content: s.beforeEating,
      imageCharacter: AppImage.imagesBeforeEating,
      audioKey: AudioKeys.beforeEating,
    ),
    AthkarEntity(
      title: s.titleAfterEating,
      content: s.afterEating,
      imageCharacter: AppImage.imagesAfterEating,
      audioKey: AudioKeys.afterEating,
    ),
    AthkarEntity(
      title: s.titleEnteringBathroom,
      content: s.enteringBathroom,
      imageCharacter: AppImage.imagesEnteringBathroom,
      audioKey: AudioKeys.enteringBathroom,
    ),
    AthkarEntity(
      title: s.titleLeavingBathroom,
      content: s.leavingBathroom,
      imageCharacter: AppImage.imagesLeavingBathroom,
      audioKey: AudioKeys.leavingBathroom,
    ),
    AthkarEntity(
      title: s.titleLeavingHome,
      content: s.leavingHome,
      imageCharacter: AppImage.imagesLeavingHome,
      audioKey: AudioKeys.leavingHome,
    ),
    AthkarEntity(
      title: s.titleEnteringHome,
      content: s.enteringHome,
      imageCharacter: AppImage.imagesEnteringHome,
      audioKey: AudioKeys.enteringHome,
    ),
    AthkarEntity(
      title: s.titleEnteringMosque,
      content: s.enteringMosque,
      imageCharacter: AppImage.imagesEnteringMosque,
      audioKey: AudioKeys.enteringMosque,
    ),
    AthkarEntity(
      title: s.titleLeavingMosque,
      content: s.leavingMosque,
      imageCharacter: AppImage.imagesLeavingMosque,
      audioKey: AudioKeys.leavingMosque,
    ),
    AthkarEntity(
      title: s.titleRidingCar,
      content: s.ridingCar,
      imageCharacter: AppImage.imagesRidingCar,
      audioKey: AudioKeys.ridingCar,
    ),
    AthkarEntity(
      title: s.titleHearingThunder,
      content: s.hearingThunder,
      imageCharacter: AppImage.imagesHearingThunder,
      audioKey: AudioKeys.hearingThunder,
    ),
    AthkarEntity(
      title: s.titleRainfall,
      content: s.rainfall,
      imageCharacter: AppImage.imagesRainfall,
      audioKey: AudioKeys.rainfall,
    ),
    AthkarEntity(
      title: s.titleAfterRainfall,
      content: s.afterRainfall,
      imageCharacter: AppImage.imagesAfterRainfall,
      audioKey: AudioKeys.afterRainfall,
    ),
    AthkarEntity(
      title: s.titleSneezing,
      content: s.sneezing,
      imageCharacter: AppImage.imagesSneezing,
      audioKey: AudioKeys.sneezing,
    ),
    AthkarEntity(
      title: s.titleVisitingSick,
      content: s.visitingSick,
      imageCharacter: AppImage.imagesVisitingSick,
      audioKey: AudioKeys.visitingSick,
    ),
    AthkarEntity(
      title: s.titleVisitingGraves,
      content: s.visitingGraves,
      imageCharacter: AppImage.imagesVisitingGraves,
      audioKey: AudioKeys.visitingGraves,
    ),
    AthkarEntity(
      title: s.titleKafaratAlMajlis,
      content: s.kafaratAlMajlis,
      imageCharacter: AppImage.imagesKafaratAlMajlis,
      audioKey: AudioKeys.kafaratAlMajlis,
    ),
    AthkarEntity(
      title: s.titleDogsBarking,
      content: s.dogsBarking,
      imageCharacter: AppImage.imagesDogsBarking,
      audioKey: AudioKeys.dogsBarking,
    ),
  ];
}
