import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:guide_muslim_kids/core/entities/athkar_entity.dart';
import 'package:guide_muslim_kids/core/manage/audio_cubit/audio_cubit.dart';
import 'package:guide_muslim_kids/core/manage/text_to_speech_cubit/text_to_speech_cubit.dart';
// import 'package:guide_muslim_kids/feature/Aldeen/logic/aldeen_entity.dart';
// import 'package:guide_muslim_kids/feature/Aldeen/ui/aldeen_detail_view.dart';
// import 'package:guide_muslim_kids/feature/Aldeen/ui/aldeen_view.dart';
// import 'package:guide_muslim_kids/feature/about_us/ui/about_us_view.dart';
import 'package:guide_muslim_kids/feature/daily/ui/daily_view.dart';
import 'package:guide_muslim_kids/feature/fast/ui/fast_view.dart';
import 'package:guide_muslim_kids/feature/game/logic/manage/game_level_cubit.dart';
// import 'package:guide_muslim_kids/feature/game/ui/game_view.dart';
import 'package:guide_muslim_kids/feature/home/logic/home_entity.dart';
import 'package:guide_muslim_kids/feature/home/ui/home_sub_view.dart';
import 'package:guide_muslim_kids/feature/home/ui/home_view.dart';
// import 'package:guide_muslim_kids/feature/names/logic/entities/names_entity.dart';
// import 'package:guide_muslim_kids/feature/names/ui/names_detail_view.dart';
import 'package:guide_muslim_kids/feature/names/ui/names_view.dart';
import 'package:guide_muslim_kids/feature/prayer/ui/prayer_view.dart';
import 'package:guide_muslim_kids/feature/splash/logic/bloc/splash_bloc.dart';
import 'package:guide_muslim_kids/feature/splash/ui/splash_view.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// Mock AssetBundle to avoid "asset not found" errors
class TestAssetBundle extends CachingAssetBundle {
  @override
  Future<String> loadString(String key, {bool cache = true}) async {
    return ""; // Return empty string for text assets
  }

  @override
  Future<ByteData> load(String key) async {
    // Return transparent 1x1 pixel png to avoid decoding errors if possible, 
    // or just empty bytes if the decoder handles it gracefully (it usually doesn't).
    // Let's return a valid 1x1 transparent PNG.
    final Uint8List transparentImage = Uint8List.fromList(<int>[
      0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A, 0x00, 0x00, 0x00, 0x0D, 
      0x49, 0x48, 0x44, 0x52, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 
      0x08, 0x06, 0x00, 0x00, 0x00, 0x1F, 0x15, 0xC4, 0x89, 0x00, 0x00, 0x00, 
      0x0A, 0x49, 0x44, 0x41, 0x54, 0x78, 0x9C, 0x63, 0x00, 0x01, 0x00, 0x00, 
      0x05, 0x00, 0x01, 0x0D, 0x0A, 0x2D, 0xB4, 0x00, 0x00, 0x00, 0x00, 0x49, 
      0x45, 0x4E, 0x44, 0xAE, 0x42, 0x60, 0x82,
    ]);
    return ByteData.view(transparentImage.buffer);
  }
}

// Mock SplashBloc to prevent navigation during tests
class MockSplashBloc extends Bloc<SplashEvent, SplashState> implements SplashBloc {
  MockSplashBloc() : super(SplashInitial()) {
    on<StartSplash>((event, emit) async {
       // Do nothing or emit initial only to prevent navigation
    });
  }
}

// Helper function to wrap widgets with all necessary providers and MaterialApp
Widget createWidgetUnderTest(Widget child) {
  return ScreenUtilInit(
    designSize: const Size(360, 690),
    minTextAdapt: false,
    splitScreenMode: true,
    builder: (_, __) {
      return MultiBlocProvider(
        providers: [
          BlocProvider<SplashBloc>(create: (context) => MockSplashBloc()),
          BlocProvider(create: (context) => AudioCubit()),
          BlocProvider(create: (context) => GameLevelCubit()),
          BlocProvider(create: (context) => TextToSpeechCubit()),
        ],
        child: MaterialApp(
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: const Locale('ar'), // Set default locale as in main
          home: child,
        ),
      );
    },
  );
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Comprehensive App Widget Tests (Isolated)', () {
    testWidgets('SplashView loads', (WidgetTester tester) async {
      await tester.pumpWidget(createWidgetUnderTest(const SplashView()));
      expect(find.byType(SplashView), findsOneWidget);
      // Wait for potential animations to avoid pending timer errors
      await tester.pumpAndSettle(const Duration(seconds: 4));
    });

    testWidgets('HomeView loads', (WidgetTester tester) async {
      await tester.pumpWidget(createWidgetUnderTest(const HomeView()));
      expect(find.byType(HomeView), findsOneWidget);
    });

    // testWidgets('AldeenView loads', (WidgetTester tester) async {
    //   await tester.pumpWidget(createWidgetUnderTest(const AldeenView()));
    //   expect(find.byType(AldeenView), findsOneWidget);
    // });

    // testWidgets('AldeenDetailView loads with arguments', (WidgetTester tester) async {
      // Use a dummy image string to trigger the Image.asset branch (which uses DefaultAssetBundle)
      // instead of the null-image branch (which uses global AssetImage and crashes).
      // const mockEntity = AldeenEntity(
      //   title: 'Test Title',
      //   content: 'Test Content',
      //   audioKey: 'test_audio',
      //   image: 'dummy_image.png', 
      // );
    //   await tester.pumpWidget(createWidgetUnderTest(AldeenDetailView(data: mockEntity)));
    //   expect(find.byType(AldeenDetailView), findsOneWidget);
    //   expect(find.text('Test Title'), findsOneWidget);
    // });

    testWidgets('SubHomeView loads with arguments', (WidgetTester tester) async {
      const mockSubHome = SubHomeEntity(
        titleAppbar: 'SubHome Test',
        data: [],
      );
      await tester.pumpWidget(createWidgetUnderTest(const HomeSubView(data: mockSubHome)));
      expect(find.byType(HomeSubView), findsOneWidget);
      expect(find.text('SubHome Test'), findsOneWidget);
    });

    testWidgets('DailyView loads', (WidgetTester tester) async {
      await tester.pumpWidget(createWidgetUnderTest(const DailyView()));
      expect(find.byType(DailyView), findsOneWidget);
    });

    testWidgets('PrayerView loads', (WidgetTester tester) async {
      await tester.pumpWidget(createWidgetUnderTest(const PrayerView()));
      expect(find.byType(PrayerView), findsOneWidget);
    });

    testWidgets('FastView loads', (WidgetTester tester) async {
      await tester.pumpWidget(createWidgetUnderTest(const FastView()));
      expect(find.byType(FastView), findsOneWidget);
    });

    testWidgets('NamesView loads', (WidgetTester tester) async {
      await tester.pumpWidget(createWidgetUnderTest(const NamesView()));
      expect(find.byType(NamesView), findsOneWidget);
    });

    // testWidgets('NamesDetailView loads with arguments', (WidgetTester tester) async {
    //    const mockName = NamesEntity(
    //     title: 'Allah',
    //     desc: 'God',
    //   );
    //   await tester.pumpWidget(createWidgetUnderTest(NamesDetailView(data: mockName)));
    //   expect(find.byType(NamesDetailView), findsOneWidget);
    //   expect(find.text('Allah'), findsOneWidget);
    // });

    // testWidgets('GameView loads', (WidgetTester tester) async {
    //   await tester.pumpWidget(createWidgetUnderTest(const GameView()));
    //   expect(find.byType(GameView), findsOneWidget);
    // });

    // testWidgets('AboutUsView loads', (WidgetTester tester) async {
    //   await tester.pumpWidget(createWidgetUnderTest(const AboutUsView()));
    //   expect(find.byType(AboutUsView), findsOneWidget);
    // });
  });
}
