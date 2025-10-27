// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// ``
  String get titleSleeping {
    return Intl.message('', name: 'titleSleeping', desc: '', args: []);
  }

  /// ``
  String get titleWakingUpFromSleep {
    return Intl.message('', name: 'titleWakingUpFromSleep', desc: '', args: []);
  }

  /// ``
  String get titleBeforeWudu {
    return Intl.message('', name: 'titleBeforeWudu', desc: '', args: []);
  }

  /// ``
  String get titleAfterWudu {
    return Intl.message('', name: 'titleAfterWudu', desc: '', args: []);
  }

  /// ``
  String get titleAdhan {
    return Intl.message('', name: 'titleAdhan', desc: '', args: []);
  }

  /// ``
  String get titleEnteringMarket {
    return Intl.message('', name: 'titleEnteringMarket', desc: '', args: []);
  }

  /// ``
  String get titleWearingClothes {
    return Intl.message('', name: 'titleWearingClothes', desc: '', args: []);
  }

  /// ``
  String get titleWearingNewClothes {
    return Intl.message('', name: 'titleWearingNewClothes', desc: '', args: []);
  }

  /// ``
  String get titleBeforeEating {
    return Intl.message('', name: 'titleBeforeEating', desc: '', args: []);
  }

  /// ``
  String get titleAfterEating {
    return Intl.message('', name: 'titleAfterEating', desc: '', args: []);
  }

  /// ``
  String get titleEnteringBathroom {
    return Intl.message('', name: 'titleEnteringBathroom', desc: '', args: []);
  }

  /// ``
  String get titleLeavingBathroom {
    return Intl.message('', name: 'titleLeavingBathroom', desc: '', args: []);
  }

  /// ``
  String get titleLeavingHome {
    return Intl.message('', name: 'titleLeavingHome', desc: '', args: []);
  }

  /// ``
  String get titleEnteringHome {
    return Intl.message('', name: 'titleEnteringHome', desc: '', args: []);
  }

  /// ``
  String get titleEnteringMosque {
    return Intl.message('', name: 'titleEnteringMosque', desc: '', args: []);
  }

  /// ``
  String get titleLeavingMosque {
    return Intl.message('', name: 'titleLeavingMosque', desc: '', args: []);
  }

  /// ``
  String get titleRidingCar {
    return Intl.message('', name: 'titleRidingCar', desc: '', args: []);
  }

  /// ``
  String get titleHearingThunder {
    return Intl.message('', name: 'titleHearingThunder', desc: '', args: []);
  }

  /// ``
  String get titleRainfall {
    return Intl.message('', name: 'titleRainfall', desc: '', args: []);
  }

  /// ``
  String get titleAfterRainfall {
    return Intl.message('', name: 'titleAfterRainfall', desc: '', args: []);
  }

  /// ``
  String get titleSneezing {
    return Intl.message('', name: 'titleSneezing', desc: '', args: []);
  }

  /// ``
  String get titleVisitingSick {
    return Intl.message('', name: 'titleVisitingSick', desc: '', args: []);
  }

  /// ``
  String get titleKafaratAlMajlis {
    return Intl.message('', name: 'titleKafaratAlMajlis', desc: '', args: []);
  }

  /// ``
  String get titleDogsBarking {
    return Intl.message('', name: 'titleDogsBarking', desc: '', args: []);
  }

  /// ``
  String get titleVisitingGraves {
    return Intl.message('', name: 'titleVisitingGraves', desc: '', args: []);
  }

  /// ``
  String get titleOpeningSupplication {
    return Intl.message(
      '',
      name: 'titleOpeningSupplication',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get titleRuku {
    return Intl.message('', name: 'titleRuku', desc: '', args: []);
  }

  /// ``
  String get titleRisingFromRuku {
    return Intl.message('', name: 'titleRisingFromRuku', desc: '', args: []);
  }

  /// ``
  String get titleSujood {
    return Intl.message('', name: 'titleSujood', desc: '', args: []);
  }

  /// ``
  String get titleBetweenTwoSujoods {
    return Intl.message('', name: 'titleBetweenTwoSujoods', desc: '', args: []);
  }

  /// ``
  String get titleFirstTashahhud {
    return Intl.message('', name: 'titleFirstTashahhud', desc: '', args: []);
  }

  /// ``
  String get titleFinalTashahhud {
    return Intl.message('', name: 'titleFinalTashahhud', desc: '', args: []);
  }

  /// ``
  String get titleBeforeSalam {
    return Intl.message('', name: 'titleBeforeSalam', desc: '', args: []);
  }

  /// ``
  String get titleProstrationOfRecitation {
    return Intl.message(
      '',
      name: 'titleProstrationOfRecitation',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get titleAfterPrayer {
    return Intl.message('', name: 'titleAfterPrayer', desc: '', args: []);
  }

  /// ``
  String get titleQunootWitr {
    return Intl.message('', name: 'titleQunootWitr', desc: '', args: []);
  }

  /// ``
  String get titleIftarSupplication {
    return Intl.message('', name: 'titleIftarSupplication', desc: '', args: []);
  }

  /// ``
  String get titleFastingArgumentResponse {
    return Intl.message(
      '',
      name: 'titleFastingArgumentResponse',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get titleIftarAtHome {
    return Intl.message('', name: 'titleIftarAtHome', desc: '', args: []);
  }

  /// ``
  String get titleSeeingCrescent {
    return Intl.message('', name: 'titleSeeingCrescent', desc: '', args: []);
  }

  /// ``
  String get sleeping {
    return Intl.message('', name: 'sleeping', desc: '', args: []);
  }

  /// ``
  String get wakingUpFromSleep {
    return Intl.message('', name: 'wakingUpFromSleep', desc: '', args: []);
  }

  /// ``
  String get beforeWudu {
    return Intl.message('', name: 'beforeWudu', desc: '', args: []);
  }

  /// ``
  String get afterWudu {
    return Intl.message('', name: 'afterWudu', desc: '', args: []);
  }

  /// ``
  String get adhan {
    return Intl.message('', name: 'adhan', desc: '', args: []);
  }

  /// ``
  String get enteringMarket {
    return Intl.message('', name: 'enteringMarket', desc: '', args: []);
  }

  /// ``
  String get wearingClothes {
    return Intl.message('', name: 'wearingClothes', desc: '', args: []);
  }

  /// ``
  String get wearingNewClothes {
    return Intl.message('', name: 'wearingNewClothes', desc: '', args: []);
  }

  /// ``
  String get beforeEating {
    return Intl.message('', name: 'beforeEating', desc: '', args: []);
  }

  /// ``
  String get afterEating {
    return Intl.message('', name: 'afterEating', desc: '', args: []);
  }

  /// ``
  String get enteringBathroom {
    return Intl.message('', name: 'enteringBathroom', desc: '', args: []);
  }

  /// ``
  String get leavingBathroom {
    return Intl.message('', name: 'leavingBathroom', desc: '', args: []);
  }

  /// ``
  String get leavingHome {
    return Intl.message('', name: 'leavingHome', desc: '', args: []);
  }

  /// ``
  String get enteringHome {
    return Intl.message('', name: 'enteringHome', desc: '', args: []);
  }

  /// ``
  String get enteringMosque {
    return Intl.message('', name: 'enteringMosque', desc: '', args: []);
  }

  /// ``
  String get leavingMosque {
    return Intl.message('', name: 'leavingMosque', desc: '', args: []);
  }

  /// ``
  String get ridingCar {
    return Intl.message('', name: 'ridingCar', desc: '', args: []);
  }

  /// ``
  String get hearingThunder {
    return Intl.message('', name: 'hearingThunder', desc: '', args: []);
  }

  /// ``
  String get rainfall {
    return Intl.message('', name: 'rainfall', desc: '', args: []);
  }

  /// ``
  String get afterRainfall {
    return Intl.message('', name: 'afterRainfall', desc: '', args: []);
  }

  /// ``
  String get sneezing {
    return Intl.message('', name: 'sneezing', desc: '', args: []);
  }

  /// ``
  String get visitingSick {
    return Intl.message('', name: 'visitingSick', desc: '', args: []);
  }

  /// ``
  String get kafaratAlMajlis {
    return Intl.message('', name: 'kafaratAlMajlis', desc: '', args: []);
  }

  /// ``
  String get dogsBarking {
    return Intl.message('', name: 'dogsBarking', desc: '', args: []);
  }

  /// ``
  String get visitingGraves {
    return Intl.message('', name: 'visitingGraves', desc: '', args: []);
  }

  /// ``
  String get openingSupplication {
    return Intl.message('', name: 'openingSupplication', desc: '', args: []);
  }

  /// ``
  String get ruku {
    return Intl.message('', name: 'ruku', desc: '', args: []);
  }

  /// ``
  String get risingFromRuku {
    return Intl.message('', name: 'risingFromRuku', desc: '', args: []);
  }

  /// ``
  String get sujood {
    return Intl.message('', name: 'sujood', desc: '', args: []);
  }

  /// ``
  String get betweenTwoSujoods {
    return Intl.message('', name: 'betweenTwoSujoods', desc: '', args: []);
  }

  /// ``
  String get firstTashahhud {
    return Intl.message('', name: 'firstTashahhud', desc: '', args: []);
  }

  /// ``
  String get finalTashahhud {
    return Intl.message('', name: 'finalTashahhud', desc: '', args: []);
  }

  /// ``
  String get beforeSalam {
    return Intl.message('', name: 'beforeSalam', desc: '', args: []);
  }

  /// ``
  String get prostrationOfRecitation {
    return Intl.message(
      '',
      name: 'prostrationOfRecitation',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get afterPrayer {
    return Intl.message('', name: 'afterPrayer', desc: '', args: []);
  }

  /// ``
  String get qunootWitr {
    return Intl.message('', name: 'qunootWitr', desc: '', args: []);
  }

  /// ``
  String get iftarSupplication {
    return Intl.message('', name: 'iftarSupplication', desc: '', args: []);
  }

  /// ``
  String get fastingArgumentResponse {
    return Intl.message(
      '',
      name: 'fastingArgumentResponse',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get iftarAtHome {
    return Intl.message('', name: 'iftarAtHome', desc: '', args: []);
  }

  /// ``
  String get seeingCrescent {
    return Intl.message('', name: 'seeingCrescent', desc: '', args: []);
  }

  /// ``
  String get AlertNoDataProvided {
    return Intl.message('', name: 'AlertNoDataProvided', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
