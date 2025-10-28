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
  String get titleHome {
    return Intl.message('', name: 'titleHome', desc: '', args: []);
  }

  /// ``
  String get homeAzkar {
    return Intl.message('', name: 'homeAzkar', desc: '', args: []);
  }

  /// ``
  String get homeSalah {
    return Intl.message('', name: 'homeSalah', desc: '', args: []);
  }

  /// ``
  String get homeSawm {
    return Intl.message('', name: 'homeSawm', desc: '', args: []);
  }

  /// ``
  String get homeNames {
    return Intl.message('', name: 'homeNames', desc: '', args: []);
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
  String get titleAllah {
    return Intl.message('', name: 'titleAllah', desc: '', args: []);
  }

  /// ``
  String get titleArRahman {
    return Intl.message('', name: 'titleArRahman', desc: '', args: []);
  }

  /// ``
  String get titleArRahim {
    return Intl.message('', name: 'titleArRahim', desc: '', args: []);
  }

  /// ``
  String get titleAlMalik {
    return Intl.message('', name: 'titleAlMalik', desc: '', args: []);
  }

  /// ``
  String get titleAlQuddus {
    return Intl.message('', name: 'titleAlQuddus', desc: '', args: []);
  }

  /// ``
  String get titleAsSalam {
    return Intl.message('', name: 'titleAsSalam', desc: '', args: []);
  }

  /// ``
  String get titleAlMumin {
    return Intl.message('', name: 'titleAlMumin', desc: '', args: []);
  }

  /// ``
  String get titleAlMuhaymin {
    return Intl.message('', name: 'titleAlMuhaymin', desc: '', args: []);
  }

  /// ``
  String get titleAlAziz {
    return Intl.message('', name: 'titleAlAziz', desc: '', args: []);
  }

  /// ``
  String get titleAlJabbar {
    return Intl.message('', name: 'titleAlJabbar', desc: '', args: []);
  }

  /// ``
  String get titleAlMutakabbir {
    return Intl.message('', name: 'titleAlMutakabbir', desc: '', args: []);
  }

  /// ``
  String get titleAlKhaliq {
    return Intl.message('', name: 'titleAlKhaliq', desc: '', args: []);
  }

  /// ``
  String get titleAlBari {
    return Intl.message('', name: 'titleAlBari', desc: '', args: []);
  }

  /// ``
  String get titleAlMusawwir {
    return Intl.message('', name: 'titleAlMusawwir', desc: '', args: []);
  }

  /// ``
  String get titleAlWali {
    return Intl.message('', name: 'titleAlWali', desc: '', args: []);
  }

  /// ``
  String get titleAlMawla {
    return Intl.message('', name: 'titleAlMawla', desc: '', args: []);
  }

  /// ``
  String get titleAnNasir {
    return Intl.message('', name: 'titleAnNasir', desc: '', args: []);
  }

  /// ``
  String get titleAlQarib {
    return Intl.message('', name: 'titleAlQarib', desc: '', args: []);
  }

  /// ``
  String get titleAlMujib {
    return Intl.message('', name: 'titleAlMujib', desc: '', args: []);
  }

  /// ``
  String get titleAsSami {
    return Intl.message('', name: 'titleAsSami', desc: '', args: []);
  }

  /// ``
  String get titleAlBasir {
    return Intl.message('', name: 'titleAlBasir', desc: '', args: []);
  }

  /// ``
  String get titleAlWajid {
    return Intl.message('', name: 'titleAlWajid', desc: '', args: []);
  }

  /// ``
  String get titleAlMajid {
    return Intl.message('', name: 'titleAlMajid', desc: '', args: []);
  }

  /// ``
  String get titleAlMajid2 {
    return Intl.message('', name: 'titleAlMajid2', desc: '', args: []);
  }

  /// ``
  String get titleAlWahid {
    return Intl.message('', name: 'titleAlWahid', desc: '', args: []);
  }

  /// ``
  String get titleAsSamad {
    return Intl.message('', name: 'titleAsSamad', desc: '', args: []);
  }

  /// ``
  String get titleAlHadi {
    return Intl.message('', name: 'titleAlHadi', desc: '', args: []);
  }

  /// ``
  String get titleAlWahhab {
    return Intl.message('', name: 'titleAlWahhab', desc: '', args: []);
  }

  /// ``
  String get titleAlFattah {
    return Intl.message('', name: 'titleAlFattah', desc: '', args: []);
  }

  /// ``
  String get titleArRazzak {
    return Intl.message('', name: 'titleArRazzak', desc: '', args: []);
  }

  /// ``
  String get titleAlAfuw {
    return Intl.message('', name: 'titleAlAfuw', desc: '', args: []);
  }

  /// ``
  String get titleAtTawwab {
    return Intl.message('', name: 'titleAtTawwab', desc: '', args: []);
  }

  /// ``
  String get titleArRaqib {
    return Intl.message('', name: 'titleArRaqib', desc: '', args: []);
  }

  /// ``
  String get titleAshShahid {
    return Intl.message('', name: 'titleAshShahid', desc: '', args: []);
  }

  /// ``
  String get titleAlHalim {
    return Intl.message('', name: 'titleAlHalim', desc: '', args: []);
  }

  /// ``
  String get titleAlAzim {
    return Intl.message('', name: 'titleAlAzim', desc: '', args: []);
  }

  /// ``
  String get titleAlQahhar {
    return Intl.message('', name: 'titleAlQahhar', desc: '', args: []);
  }

  /// ``
  String get titleArRauf {
    return Intl.message('', name: 'titleArRauf', desc: '', args: []);
  }

  /// ``
  String get titleAlLatif {
    return Intl.message('', name: 'titleAlLatif', desc: '', args: []);
  }

  /// ``
  String get titleAlHasib {
    return Intl.message('', name: 'titleAlHasib', desc: '', args: []);
  }

  /// ``
  String get titleAlHafiz {
    return Intl.message('', name: 'titleAlHafiz', desc: '', args: []);
  }

  /// ``
  String get titleAlHaqq {
    return Intl.message('', name: 'titleAlHaqq', desc: '', args: []);
  }

  /// ``
  String get titleAlHakam {
    return Intl.message('', name: 'titleAlHakam', desc: '', args: []);
  }

  /// ``
  String get titleAlHakim {
    return Intl.message('', name: 'titleAlHakim', desc: '', args: []);
  }

  /// ``
  String get titleAlAdl {
    return Intl.message('', name: 'titleAlAdl', desc: '', args: []);
  }

  /// ``
  String get titleAlAlim {
    return Intl.message('', name: 'titleAlAlim', desc: '', args: []);
  }

  /// ``
  String get titleAlKhabeer {
    return Intl.message('', name: 'titleAlKhabeer', desc: '', args: []);
  }

  /// ``
  String get titleAlHamid {
    return Intl.message('', name: 'titleAlHamid', desc: '', args: []);
  }

  /// ``
  String get titleAlQadir {
    return Intl.message('', name: 'titleAlQadir', desc: '', args: []);
  }

  /// ``
  String get titleAlMuqtadir {
    return Intl.message('', name: 'titleAlMuqtadir', desc: '', args: []);
  }

  /// ``
  String get titleAlQawiyy {
    return Intl.message('', name: 'titleAlQawiyy', desc: '', args: []);
  }

  /// ``
  String get titleAlMatin {
    return Intl.message('', name: 'titleAlMatin', desc: '', args: []);
  }

  /// ``
  String get titleAlHayy {
    return Intl.message('', name: 'titleAlHayy', desc: '', args: []);
  }

  /// ``
  String get titleAlQayyum {
    return Intl.message('', name: 'titleAlQayyum', desc: '', args: []);
  }

  /// ``
  String get titleAlKarim {
    return Intl.message('', name: 'titleAlKarim', desc: '', args: []);
  }

  /// ``
  String get titleDhulJalaliWalIkram {
    return Intl.message(
      '',
      name: 'titleDhulJalaliWalIkram',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get titleAsSabur {
    return Intl.message('', name: 'titleAsSabur', desc: '', args: []);
  }

  /// ``
  String get titleAlMannan {
    return Intl.message('', name: 'titleAlMannan', desc: '', args: []);
  }

  /// ``
  String get titleAlMuqit {
    return Intl.message('', name: 'titleAlMuqit', desc: '', args: []);
  }

  /// ``
  String get titleAshShakur {
    return Intl.message('', name: 'titleAshShakur', desc: '', args: []);
  }

  /// ``
  String get titleAlBarr {
    return Intl.message('', name: 'titleAlBarr', desc: '', args: []);
  }

  /// ``
  String get titleAlWadud {
    return Intl.message('', name: 'titleAlWadud', desc: '', args: []);
  }

  /// ``
  String get titleAlMuqsit {
    return Intl.message('', name: 'titleAlMuqsit', desc: '', args: []);
  }

  /// ``
  String get titleArRafiq {
    return Intl.message('', name: 'titleArRafiq', desc: '', args: []);
  }

  /// ``
  String get titleAlJawad {
    return Intl.message('', name: 'titleAlJawad', desc: '', args: []);
  }

  /// ``
  String get titleAlMuhsin {
    return Intl.message('', name: 'titleAlMuhsin', desc: '', args: []);
  }

  /// ``
  String get titleAsSittir {
    return Intl.message('', name: 'titleAsSittir', desc: '', args: []);
  }

  /// ``
  String get titleAdDayyan {
    return Intl.message('', name: 'titleAdDayyan', desc: '', args: []);
  }

  /// ``
  String get titleAshShafi {
    return Intl.message('', name: 'titleAshShafi', desc: '', args: []);
  }

  /// ``
  String get titleAsSayyid {
    return Intl.message('', name: 'titleAsSayyid', desc: '', args: []);
  }

  /// ``
  String get titleAlWitr {
    return Intl.message('', name: 'titleAlWitr', desc: '', args: []);
  }

  /// ``
  String get titleAtTayyib {
    return Intl.message('', name: 'titleAtTayyib', desc: '', args: []);
  }

  /// ``
  String get titleAlMuti {
    return Intl.message('', name: 'titleAlMuti', desc: '', args: []);
  }

  /// ``
  String get titleAlJamil {
    return Intl.message('', name: 'titleAlJamil', desc: '', args: []);
  }

  /// ``
  String get titleAlAli {
    return Intl.message('', name: 'titleAlAli', desc: '', args: []);
  }

  /// ``
  String get titleAlJalil {
    return Intl.message('', name: 'titleAlJalil', desc: '', args: []);
  }

  /// ``
  String get titleAlWasi {
    return Intl.message('', name: 'titleAlWasi', desc: '', args: []);
  }

  /// ``
  String get titleAlKabir {
    return Intl.message('', name: 'titleAlKabir', desc: '', args: []);
  }

  /// ``
  String get titleAlBaith {
    return Intl.message('', name: 'titleAlBaith', desc: '', args: []);
  }

  /// ``
  String get titleAlWakeel {
    return Intl.message('', name: 'titleAlWakeel', desc: '', args: []);
  }

  /// ``
  String get titleAlMuhsi {
    return Intl.message('', name: 'titleAlMuhsi', desc: '', args: []);
  }

  /// ``
  String get titleAlMubdi {
    return Intl.message('', name: 'titleAlMubdi', desc: '', args: []);
  }

  /// ``
  String get titleAlMuid {
    return Intl.message('', name: 'titleAlMuid', desc: '', args: []);
  }

  /// ``
  String get titleAlWaliyy {
    return Intl.message('', name: 'titleAlWaliyy', desc: '', args: []);
  }

  /// ``
  String get titleAlMutaali {
    return Intl.message('', name: 'titleAlMutaali', desc: '', args: []);
  }

  /// ``
  String get titleAlMuntaqim {
    return Intl.message('', name: 'titleAlMuntaqim', desc: '', args: []);
  }

  /// ``
  String get titleMalikAlMulk {
    return Intl.message('', name: 'titleMalikAlMulk', desc: '', args: []);
  }

  /// ``
  String get titleAlJami {
    return Intl.message('', name: 'titleAlJami', desc: '', args: []);
  }

  /// ``
  String get titleAlGhani {
    return Intl.message('', name: 'titleAlGhani', desc: '', args: []);
  }

  /// ``
  String get titleAlMughni {
    return Intl.message('', name: 'titleAlMughni', desc: '', args: []);
  }

  /// ``
  String get titleAnNur {
    return Intl.message('', name: 'titleAnNur', desc: '', args: []);
  }

  /// ``
  String get titleAlBadi {
    return Intl.message('', name: 'titleAlBadi', desc: '', args: []);
  }

  /// ``
  String get titleAlBaqi {
    return Intl.message('', name: 'titleAlBaqi', desc: '', args: []);
  }

  /// ``
  String get titleArRashid {
    return Intl.message('', name: 'titleArRashid', desc: '', args: []);
  }

  /// ``
  String get titleAlWarith {
    return Intl.message('', name: 'titleAlWarith', desc: '', args: []);
  }

  /// ``
  String get descAllah {
    return Intl.message('', name: 'descAllah', desc: '', args: []);
  }

  /// ``
  String get descArRahman {
    return Intl.message('', name: 'descArRahman', desc: '', args: []);
  }

  /// ``
  String get descArRahim {
    return Intl.message('', name: 'descArRahim', desc: '', args: []);
  }

  /// ``
  String get descAlMalik {
    return Intl.message('', name: 'descAlMalik', desc: '', args: []);
  }

  /// ``
  String get descAlQuddus {
    return Intl.message('', name: 'descAlQuddus', desc: '', args: []);
  }

  /// ``
  String get descAsSalam {
    return Intl.message('', name: 'descAsSalam', desc: '', args: []);
  }

  /// ``
  String get descAlMumin {
    return Intl.message('', name: 'descAlMumin', desc: '', args: []);
  }

  /// ``
  String get descAlMuhaymin {
    return Intl.message('', name: 'descAlMuhaymin', desc: '', args: []);
  }

  /// ``
  String get descAlAziz {
    return Intl.message('', name: 'descAlAziz', desc: '', args: []);
  }

  /// ``
  String get descAlJabbar {
    return Intl.message('', name: 'descAlJabbar', desc: '', args: []);
  }

  /// ``
  String get descAlMutakabbir {
    return Intl.message('', name: 'descAlMutakabbir', desc: '', args: []);
  }

  /// ``
  String get descAlKhaliq {
    return Intl.message('', name: 'descAlKhaliq', desc: '', args: []);
  }

  /// ``
  String get descAlBari {
    return Intl.message('', name: 'descAlBari', desc: '', args: []);
  }

  /// ``
  String get descAlMusawwir {
    return Intl.message('', name: 'descAlMusawwir', desc: '', args: []);
  }

  /// ``
  String get descAlWali {
    return Intl.message('', name: 'descAlWali', desc: '', args: []);
  }

  /// ``
  String get descAlMawla {
    return Intl.message('', name: 'descAlMawla', desc: '', args: []);
  }

  /// ``
  String get descAnNasir {
    return Intl.message('', name: 'descAnNasir', desc: '', args: []);
  }

  /// ``
  String get descAlQarib {
    return Intl.message('', name: 'descAlQarib', desc: '', args: []);
  }

  /// ``
  String get descAlMujib {
    return Intl.message('', name: 'descAlMujib', desc: '', args: []);
  }

  /// ``
  String get descAsSami {
    return Intl.message('', name: 'descAsSami', desc: '', args: []);
  }

  /// ``
  String get descAlBasir {
    return Intl.message('', name: 'descAlBasir', desc: '', args: []);
  }

  /// ``
  String get descAlWajid {
    return Intl.message('', name: 'descAlWajid', desc: '', args: []);
  }

  /// ``
  String get descAlMajid {
    return Intl.message('', name: 'descAlMajid', desc: '', args: []);
  }

  /// ``
  String get descAlMajid2 {
    return Intl.message('', name: 'descAlMajid2', desc: '', args: []);
  }

  /// ``
  String get descAlWahid {
    return Intl.message('', name: 'descAlWahid', desc: '', args: []);
  }

  /// ``
  String get descAsSamad {
    return Intl.message('', name: 'descAsSamad', desc: '', args: []);
  }

  /// ``
  String get descAlHadi {
    return Intl.message('', name: 'descAlHadi', desc: '', args: []);
  }

  /// ``
  String get descAlWahhab {
    return Intl.message('', name: 'descAlWahhab', desc: '', args: []);
  }

  /// ``
  String get descAlFattah {
    return Intl.message('', name: 'descAlFattah', desc: '', args: []);
  }

  /// ``
  String get descArRazzak {
    return Intl.message('', name: 'descArRazzak', desc: '', args: []);
  }

  /// ``
  String get descAlAfuw {
    return Intl.message('', name: 'descAlAfuw', desc: '', args: []);
  }

  /// ``
  String get descAtTawwab {
    return Intl.message('', name: 'descAtTawwab', desc: '', args: []);
  }

  /// ``
  String get descArRaqib {
    return Intl.message('', name: 'descArRaqib', desc: '', args: []);
  }

  /// ``
  String get descAshShahid {
    return Intl.message('', name: 'descAshShahid', desc: '', args: []);
  }

  /// ``
  String get descAlHalim {
    return Intl.message('', name: 'descAlHalim', desc: '', args: []);
  }

  /// ``
  String get descAlAzim {
    return Intl.message('', name: 'descAlAzim', desc: '', args: []);
  }

  /// ``
  String get descAlQahhar {
    return Intl.message('', name: 'descAlQahhar', desc: '', args: []);
  }

  /// ``
  String get descArRauf {
    return Intl.message('', name: 'descArRauf', desc: '', args: []);
  }

  /// ``
  String get descAlLatif {
    return Intl.message('', name: 'descAlLatif', desc: '', args: []);
  }

  /// ``
  String get descAlHasib {
    return Intl.message('', name: 'descAlHasib', desc: '', args: []);
  }

  /// ``
  String get descAlHafiz {
    return Intl.message('', name: 'descAlHafiz', desc: '', args: []);
  }

  /// ``
  String get descAlHaqq {
    return Intl.message('', name: 'descAlHaqq', desc: '', args: []);
  }

  /// ``
  String get descAlHakam {
    return Intl.message('', name: 'descAlHakam', desc: '', args: []);
  }

  /// ``
  String get descAlHakim {
    return Intl.message('', name: 'descAlHakim', desc: '', args: []);
  }

  /// ``
  String get descAlAdl {
    return Intl.message('', name: 'descAlAdl', desc: '', args: []);
  }

  /// ``
  String get descAlAlim {
    return Intl.message('', name: 'descAlAlim', desc: '', args: []);
  }

  /// ``
  String get descAlKhabeer {
    return Intl.message('', name: 'descAlKhabeer', desc: '', args: []);
  }

  /// ``
  String get descAlHamid {
    return Intl.message('', name: 'descAlHamid', desc: '', args: []);
  }

  /// ``
  String get descAlQadir {
    return Intl.message('', name: 'descAlQadir', desc: '', args: []);
  }

  /// ``
  String get descAlMuqtadir {
    return Intl.message('', name: 'descAlMuqtadir', desc: '', args: []);
  }

  /// ``
  String get descAlQawiyy {
    return Intl.message('', name: 'descAlQawiyy', desc: '', args: []);
  }

  /// ``
  String get descAlMatin {
    return Intl.message('', name: 'descAlMatin', desc: '', args: []);
  }

  /// ``
  String get descAlHayy {
    return Intl.message('', name: 'descAlHayy', desc: '', args: []);
  }

  /// ``
  String get descAlQayyum {
    return Intl.message('', name: 'descAlQayyum', desc: '', args: []);
  }

  /// ``
  String get descAlKarim {
    return Intl.message('', name: 'descAlKarim', desc: '', args: []);
  }

  /// ``
  String get descDhulJalaliWalIkram {
    return Intl.message('', name: 'descDhulJalaliWalIkram', desc: '', args: []);
  }

  /// ``
  String get descAsSabur {
    return Intl.message('', name: 'descAsSabur', desc: '', args: []);
  }

  /// ``
  String get descAlMannan {
    return Intl.message('', name: 'descAlMannan', desc: '', args: []);
  }

  /// ``
  String get descAlMuqit {
    return Intl.message('', name: 'descAlMuqit', desc: '', args: []);
  }

  /// ``
  String get descAshShakur {
    return Intl.message('', name: 'descAshShakur', desc: '', args: []);
  }

  /// ``
  String get descAlBarr {
    return Intl.message('', name: 'descAlBarr', desc: '', args: []);
  }

  /// ``
  String get descAlWadud {
    return Intl.message('', name: 'descAlWadud', desc: '', args: []);
  }

  /// ``
  String get descAlMuqsit {
    return Intl.message('', name: 'descAlMuqsit', desc: '', args: []);
  }

  /// ``
  String get descArRafiq {
    return Intl.message('', name: 'descArRafiq', desc: '', args: []);
  }

  /// ``
  String get descAlJawad {
    return Intl.message('', name: 'descAlJawad', desc: '', args: []);
  }

  /// ``
  String get descAlMuhsin {
    return Intl.message('', name: 'descAlMuhsin', desc: '', args: []);
  }

  /// ``
  String get descAsSittir {
    return Intl.message('', name: 'descAsSittir', desc: '', args: []);
  }

  /// ``
  String get descAdDayyan {
    return Intl.message('', name: 'descAdDayyan', desc: '', args: []);
  }

  /// ``
  String get descAshShafi {
    return Intl.message('', name: 'descAshShafi', desc: '', args: []);
  }

  /// ``
  String get descAsSayyid {
    return Intl.message('', name: 'descAsSayyid', desc: '', args: []);
  }

  /// ``
  String get descAlWitr {
    return Intl.message('', name: 'descAlWitr', desc: '', args: []);
  }

  /// ``
  String get descAtTayyib {
    return Intl.message('', name: 'descAtTayyib', desc: '', args: []);
  }

  /// ``
  String get descAlMuti {
    return Intl.message('', name: 'descAlMuti', desc: '', args: []);
  }

  /// ``
  String get descAlJamil {
    return Intl.message('', name: 'descAlJamil', desc: '', args: []);
  }

  /// ``
  String get descAlAli {
    return Intl.message('', name: 'descAlAli', desc: '', args: []);
  }

  /// ``
  String get descAlJalil {
    return Intl.message('', name: 'descAlJalil', desc: '', args: []);
  }

  /// ``
  String get descAlWasi {
    return Intl.message('', name: 'descAlWasi', desc: '', args: []);
  }

  /// ``
  String get descAlKabir {
    return Intl.message('', name: 'descAlKabir', desc: '', args: []);
  }

  /// ``
  String get descAlBaith {
    return Intl.message('', name: 'descAlBaith', desc: '', args: []);
  }

  /// ``
  String get descAlWakeel {
    return Intl.message('', name: 'descAlWakeel', desc: '', args: []);
  }

  /// ``
  String get descAlMuhsi {
    return Intl.message('', name: 'descAlMuhsi', desc: '', args: []);
  }

  /// ``
  String get descAlMubdi {
    return Intl.message('', name: 'descAlMubdi', desc: '', args: []);
  }

  /// ``
  String get descAlMuid {
    return Intl.message('', name: 'descAlMuid', desc: '', args: []);
  }

  /// ``
  String get descAlWaliyy {
    return Intl.message('', name: 'descAlWaliyy', desc: '', args: []);
  }

  /// ``
  String get descAlMutaali {
    return Intl.message('', name: 'descAlMutaali', desc: '', args: []);
  }

  /// ``
  String get descAlMuntaqim {
    return Intl.message('', name: 'descAlMuntaqim', desc: '', args: []);
  }

  /// ``
  String get descMalikAlMulk {
    return Intl.message('', name: 'descMalikAlMulk', desc: '', args: []);
  }

  /// ``
  String get descAlJami {
    return Intl.message('', name: 'descAlJami', desc: '', args: []);
  }

  /// ``
  String get descAlGhani {
    return Intl.message('', name: 'descAlGhani', desc: '', args: []);
  }

  /// ``
  String get descAlMughni {
    return Intl.message('', name: 'descAlMughni', desc: '', args: []);
  }

  /// ``
  String get descAnNur {
    return Intl.message('', name: 'descAnNur', desc: '', args: []);
  }

  /// ``
  String get descAlBadi {
    return Intl.message('', name: 'descAlBadi', desc: '', args: []);
  }

  /// ``
  String get descAlBaqi {
    return Intl.message('', name: 'descAlBaqi', desc: '', args: []);
  }

  /// ``
  String get descArRashid {
    return Intl.message('', name: 'descArRashid', desc: '', args: []);
  }

  /// ``
  String get descAlWarith {
    return Intl.message('', name: 'descAlWarith', desc: '', args: []);
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
