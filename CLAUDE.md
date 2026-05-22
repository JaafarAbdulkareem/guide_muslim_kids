# CLAUDE.md

دليل العمل على هذا المستودع لـ Claude Code. (Guidance for working in this repo.)

## نظرة عامة / Overview

**guide_muslim_kids** — تطبيق Flutter تعليمي للأطفال المسلمين (اسم العرض: "مركز المعرفة" / "نور الجيل"). يعمل **بالكامل دون اتصال بالإنترنت** (offline-first): لا يوجد أي استدعاء شبكي، ولا backend، ولا جمع بيانات. المحتوى (أذكار، صلاة، صيام، أسماء، ألعاب) مُضمَّن في الكود وملفات `assets/`.

- اللغة الأساسية: العربية (`locale: ar`)، مع دعم `intl_en.arb` / `intl_ar.arb`.
- `applicationId` / namespace: `com.almarfah.app`
- الإصدار: `1.0.0+2`

## التشغيل والأوامر / Commands

```bash
flutter pub get                      # تثبيت الاعتماديات
flutter run                          # تشغيل على جهاز/محاكي
flutter test                         # تشغيل الاختبارات (test/)
flutter analyze                      # تحليل ثابت (flutter_lints)
dart run build_runner build --delete-conflicting-outputs   # توليد freezed
flutter build apk --release          # بناء APK (يتطلب android/key.properties)
flutter build appbundle --release    # بناء AAB
flutter build ios --release --no-codesign
```

> توليد ملفات الترجمة `lib/generated/l10n.dart` يتم عبر `flutter_intl` (مفعّل في pubspec).

## البنية المعمارية / Architecture

نمط **Feature-first + Clean-ish + BLoC/Cubit**:

```
lib/
├── core/
│   ├── manage/         # Cubits عامة: AudioCubit (audioplayers), TextToSpeechCubit (flutter_tts)
│   ├── route/          # AppRoute.generate (onGenerateRoute) + RouteName + animated_route
│   ├── utils/          # ألوان، أنماط نص، مفاتيح صوت، app_images.dart المُولّد
│   ├── widget/         # widgets مشتركة (athkar_*, audio_button, celebration ...)
│   └── entities/       # كيانات مشتركة (athkar_entity)
└── feature/<name>/
    ├── data/           # بيانات ثابتة مُضمّنة (قوائم Dart)
    ├── logic/          # Cubit/Bloc + entities الخاصة بالميزة
    └── ui/             # شاشات + widget/
```

الميزات: `splash, home, Aldeen (دين), daily (أذكار), prayer (صلاة), fast (صيام), names (أسماء), game (ألعاب: choose_correct / drag_drop_word / two_option), level_first/second/third, about_us`.

### إدارة الحالة / State management
- `flutter_bloc` + `bloc_concurrency`. مزوّدون عالميون في `main.dart`: `SplashBloc, AudioCubit, GameLevelCubit, TextToSpeechCubit`.
- `freezed` + `equatable` للكيانات/الحالات؛ `get_it` متاح كـ service locator؛ `dartz` لـ Either.
- `flutter_screenutil` للتصميم المتجاوب (designSize 360×690).

### التوجيه / Routing
- مركزي عبر `lib/core/route/app_route.dart` (`switch` على `settings.name`).
- تمرير الوسائط آمن نوعيًا: `args is SomeEntity ? args : null` — حافظ على هذا النمط عند إضافة مسارات.

### التخزين / Persistence
- `shared_preferences` فقط، لتقدّم اللعبة: مفتاح `unlocked_level` (وإرث `unlocked_question_id`). لا توجد بيانات حساسة.

## أعراف الكود / Conventions
- Lints: `package:flutter_lints` + `prefer_const_constructors: true`.
- استخدم `const` للـ widgets قدر الإمكان.
- لا تستخدم `print()` للكود الإنتاجي — استخدم `dart:developer log()` (انظر AudioCubit). يوجد حاليًا `print` في `TextToSpeechCubit` يجب تنظيفه.
- الأصوات تُشغّل من `assets/audio/` عبر مفاتيح في `lib/core/utils/audio_keys.dart`.

## CI/CD
- `.github/workflows/flutter.yml`: على push/PR لفرع `development` → اختبارات + بناء APK/AAB (Android) و iOS (no-codesign).
- توقيع الإصدار: `key.properties` يُنشأ في CI من GitHub Secrets (`KEYSTORE_PASSWORD, KEY_PASSWORD, KEY_ALIAS, KEYSTORE_BASE64`)، والـ keystore يُفك من base64. **لا تُضِف ملفات التوقيع للمستودع** (انظر تحذير الأمان أدناه).

## أمان / Security (هام)
- ⚠️ `android/key.properties` و `android/app/almarfah-release.jks` موجودان محليًا وليسا في `.gitignore` — خطر تسريب. **يجب إضافتهما إلى `.gitignore` فورًا** وعدم رفعهما إطلاقًا.
- التطبيق دون صلاحية INTERNET في الـ manifest الرئيسي (debug/profile فقط) — سطح هجوم ضئيل.

## فروع / Branches
- الفرع الافتراضي للـ PRs: `main`. التطوير على `development`.
