import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/route/route_name.dart';
import 'package:guide_muslim_kids/core/utils/app_images.dart';
import 'package:guide_muslim_kids/feature/home/data/data_home_aldeen.dart';
import 'package:guide_muslim_kids/feature/home/data/data_home_athkar.dart';
import 'package:guide_muslim_kids/feature/home/logic/home_entity.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

List<HomeEntity> getDataHome(BuildContext context) {
  final s = S.of(context);
  return [
    HomeEntity(
      image: AppImage.imagesGame,
      title: s.homeGame,
      pageName: RouteName.game,
    ),
    HomeEntity(
      image: AppImage.imagesAldeen,
      title: "",
      pageName: RouteName.subHome,
      subHome: SubHomeEntity(
        titleAppbar: s.homeAldeen,
        data: getDataHomeAldeen(context),
      ),
    ),

    HomeEntity(
      image: AppImage.imagesSeeingCrescent,
      title: s.homeAthkar,
      pageName: RouteName.subHome,
      subHome: SubHomeEntity(
        titleAppbar: s.homeAthkar,
        data: getDataHomeAthkar(context),
      ),
    ),
    HomeEntity(
      image: AppImage.imagesLogo,
      title: s.homeAboutUs,
      pageName: RouteName.aboutUs,
    ),
  ];
}
