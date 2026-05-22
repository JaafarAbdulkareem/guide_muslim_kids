# تقرير الفحص الجنائي الأمني الشامل
# Comprehensive Forensic Security Audit

**التطبيق:** guide_muslim_kids (com.almarfah.app — "مركز المعرفة" / "نور الجيل")
**النوع:** تطبيق Flutter تعليمي للأطفال — يعمل دون اتصال (offline-first)
**التاريخ:** 2026-05-23
**الفرع:** development
**الإصدار:** 1.0.0+2
**حجم الكود المفحوص:** ~6,316 سطر Dart (باستثناء المولّد) + 141 ملف

---

## 1. الملخص التنفيذي / Executive Summary

التطبيق منخفض المخاطر بطبيعته: **لا اتصال شبكي، لا backend، لا جمع بيانات، لا PII، لا صلاحيات حساسة**. سطح الهجوم ضئيل جدًا. ومع ذلك تم رصد **ثغرة حرجة واحدة** تتعلق بإدارة مفاتيح التوقيع، وعدد من المشاكل متوسطة/منخفضة الأثر تتعلق بالنضج الإنتاجي وصلابة البناء.

| المستوى | العدد |
|---------|-------|
| 🔴 حرج (Critical) | 1 |
| 🟠 متوسط (Medium) | 2 |
| 🟡 منخفض (Low) | 4 |
| 🔵 معلوماتي (Info) | 5 |

**التقييم العام:** آمن وظيفيًا للنشر بعد معالجة البند الحرج. مناسب للأطفال (COPPA-friendly): لا تتبّع، لا إعلانات، لا شبكة.

---

## 2. النتائج الحرجة / Critical Findings

### 🔴 C-1: مفاتيح توقيع الإصدار مكشوفة محليًا وغير محمية من الرفع

**الموقع:** `android/key.properties` + `android/app/almarfah-release.jks`

**الوصف:**
ملف `android/key.properties` موجود على القرص ويحتوي على كلمات مرور التوقيع **بنص صريح**:

```
storePassword=almarfah@774194516
keyPassword=almarfah@774194516
keyAlias=almarfah
storeFile=almarfah-release.jks
```

وملف الـ keystore `almarfah-release.jks` موجود أيضًا. الفحص أثبت:
- ✅ الملفان **غير متتبَّعين** حاليًا في git (`git ls-files` فارغ لهما).
- ❌ لكنهما **غير مُدرَجين في `.gitignore`** (`git check-ignore` أعادهما = غير مُتجاهَلين).

**الأثر:**
أي `git add .` أو commit مستقبلي سيرفع keystore الإصدار وكلمة مروره إلى المستودع. تسريب keystore الإنتاج كارثي: يسمح لأي طرف بتوقيع حِزَم APK خبيثة تنتحل هوية التطبيق وتُثبَّت كتحديث شرعي على أجهزة المستخدمين (لا يمكن تغيير keystore بعد النشر على Google Play).

**التوصية (فورية):**
1. أضِف إلى `.gitignore`:
   ```
   android/key.properties
   android/app/*.jks
   *.keystore
   ```
2. تأكد أن الملفين لم يُرفعا قط في التاريخ: `git log --all -- android/key.properties android/app/almarfah-release.jks` (الفحص الحالي: لا أثر رفع — جيد).
3. غيّر كلمة المرور المعاد استخدامها لكل من store وkey — حاليًا متطابقتان.
4. خزّن النسخة الاحتياطية من الـ keystore في مدير أسرار آمن، لا في مجلد المشروع.

---

## 3. النتائج المتوسطة / Medium Findings

### 🟠 M-1: غياب التصغير والتعتيم في بناء الإصدار

**الموقع:** `android/app/build.gradle.kts`
```kotlin
release {
    isMinifyEnabled = false
    isShrinkResources = false
}
```
**الأثر:** الكود غير مُعتَّم وغير مُقلَّص — يسهّل الهندسة العكسية لـ APK، ويكبّر الحجم. ليس تسريبًا لأسرار (لا أسرار في الكود)، لكنه ممارسة أمنية ناقصة.
**التوصية:** فعّل `isMinifyEnabled = true` و`isShrinkResources = true` مع قواعد ProGuard/R8 المناسبة لـ Flutter، واختبر الإصدار بعدها.

### 🟠 M-2: تكرار مفتاح `CFBundleName` في Info.plist (plist مشوَّه)

**الموقع:** `ios/Runner/Info.plist`
```xml
<key>CFBundleName</key><string>guide_muslim_kids</string>
...
<key>CFBundleName</key><string>نور الجيل</string>   <!-- مكرر -->
```
**الأثر:** plist يحتوي مفتاحًا مكررًا — سلوك غير محدد (يفوز الأول عادة)، وقد يسبب رفض/تحذير من App Store، وتضاربًا في الهوية مع `CFBundleDisplayName` ("مركز المعرفة"). كذلك توحيد العلامة التجارية مفقود بين Android وiOS وملف pubspec.
**التوصية:** أبقِ مفتاح `CFBundleName` واحدًا فقط ووحّد اسم العلامة عبر المنصات.

---

## 4. النتائج المنخفضة / Low Findings

### 🟡 L-1: استخدام `print()` في كود الإنتاج يسرّب معلومات للسجلّات
**الموقع:** `lib/core/manage/text_to_speech_cubit/text_to_speech_cubit.dart`
عدة `print("Found Arabic Voice: ...")` و`print("Error: $e")`. تُكتب في سجل النظام (logcat) في الإصدار. استبدلها بـ `dart:developer log()` كما في `AudioCubit`، أو احذفها.

### 🟡 L-2: كود تصحيح متبقٍّ في الإنتاج
**الموقع:** `lib/feature/game/logic/manage/game_level_cubit.dart`
الدالة `resetProgress()` ("Debug helper") تُعيّن `unlocked_question_id = 15` وتُشحن مع الإصدار. لا خطر أمني مباشر لكنها منطق تصحيح غير مقصود للمستخدم النهائي — احذفها أو احرسها بـ `kDebugMode`.

### 🟡 L-3: انهيار محتمل لبناء الإصدار عند غياب key.properties
**الموقع:** `android/app/build.gradle.kts`
`keystoreProperties["keyAlias"] as String` يرمي استثناءً غير واضح إذا غاب الملف. أضِف تحققًا/رسالة واضحة أو شرطًا يتراجع لتوقيع debug عند الغياب.

### 🟡 L-4: `useInheritedMediaQuery: true` مهمَل (deprecated)
**الموقع:** `lib/main.dart` (داخل `ScreenUtilInit`). علم مهمَل في إصدارات Flutter الحديثة — أزِله لتفادي تحذيرات/سلوك مستقبلي.

---

## 5. النتائج المعلوماتية / Informational (نقاط إيجابية)

- 🔵 **I-1: لا اتصال شبكي إطلاقًا.** لا `http/dio/socket/firebase`، ولا صلاحية `INTERNET` في الـ manifest الرئيسي (موجودة فقط في debug/profile وهو سلوك Flutter القياسي). سطح هجوم الشبكة = صفر.
- 🔵 **I-2: لا أسرار في الكود.** فحص `token/secret/password/apikey/Authorization` لم يُظهر أي مفاتيح مضمّنة في `lib/`.
- 🔵 **I-3: لا APIs خطرة.** لا `dart:io File/Process`، لا `Platform.exec`, لا تقييم ديناميكي للكود، لا deserialization غير آمن.
- 🔵 **I-4: التوجيه آمن نوعيًا.** `AppRoute.generate` يتحقق من نوع الوسائط (`args is Entity ? args : null`) — لا حقن عبر arguments.
- 🔵 **I-5: CI يدير الأسرار بشكل صحيح.** الـ keystore وكلمات المرور تأتي من GitHub Secrets وتُفك في وقت البناء، لا من المستودع. تنبيه: راجع صلاحيات الوصول لأسرار المستودع وفعّل حماية الفروع.

---

## 6. خصوصية الأطفال / Children's Privacy (COPPA / GDPR-K)

| المعيار | الحالة |
|---------|--------|
| جمع PII | ❌ لا يوجد |
| تتبّع / Analytics | ❌ لا يوجد |
| إعلانات | ❌ لا يوجد |
| اتصال شبكي | ❌ لا يوجد |
| صلاحيات حساسة (كاميرا/موقع/جهات اتصال) | ❌ لا يوجد |
| تخزين محلي | ✅ تقدّم اللعبة فقط (غير حساس) |

**الخلاصة:** التطبيق متوافق بدرجة عالية مع متطلبات تطبيقات الأطفال. لا توجد مخاوف خصوصية.

---

## 7. خطة المعالجة المرتّبة / Prioritized Remediation Plan

| # | البند | الأولوية | الحالة |
|---|------|---------|------|
| 1 | C-1: إضافة key.properties و *.jks إلى .gitignore | فوري | ✅ تم |
| 1b | C-1: تدوير كلمة مرور التوقيع المكشوفة | فوري | ⏳ يدوي (انظر أدناه) |
| 2 | M-2: إصلاح تكرار CFBundleName | عاجل | ✅ تم |
| 3 | M-1: تفعيل minify/shrink + ProGuard | متوسط | ✅ تم |
| 4 | L-1: استبدال print بـ log | متوسط | ✅ تم |
| 5 | L-2: حراسة كود التصحيح بـ kDebugMode | منخفض | ✅ تم |
| 6 | L-3: تراجع آمن لتوقيع debug عند غياب key.properties | منخفض | ✅ تم |
| 7 | L-4: إزالة useInheritedMediaQuery المهمَل | منخفض | ✅ تم |

### ⏳ إجراء يدوي متبقٍّ (لا يمكن أتمتته):
**تدوير كلمة مرور keystore** (`almarfah@774194516`) — كُشِفت في هذه الجلسة. كلمات مرور الـ keystore لا يمكن تغييرها بعد إنشائه دون إعادة إنشاء الـ keystore، وهو غير ممكن بعد النشر على Google Play (يجب أن يبقى نفس مفتاح التوقيع). التوصية العملية:
1. بما أن الـ keystore لم يُرفع قط إلى git (تأكّدنا)، فالخطر الفعلي محدود طالما بقي الملف على جهازك فقط.
2. إن كنت في مرحلة ما قبل النشر الأول: أنشئ keystore جديدًا بكلمتي مرور مختلفتين وقويتين لـ store وkey.
3. حدّث القيمة في GitHub Secrets (`KEYSTORE_PASSWORD`, `KEY_PASSWORD`, `KEYSTORE_BASE64`) بما يطابق الجديد.

---

## 8. منهجية الفحص / Methodology

شمل الفحص: مراجعة `pubspec.yaml`/`pubspec.lock` للاعتماديات، تحليل `main.dart` ونقاط الدخول، مسح كامل لـ `lib/` بحثًا عن استدعاءات شبكية/أسرار/APIs خطرة، مراجعة `AndroidManifest.xml` (debug/main/profile) وصلاحياتها، `build.gradle.kts` وإعدادات التوقيع، `Info.plist` لـ iOS، حالة git لملفات الأسرار (`git ls-files` / `git check-ignore` / `git log`)، تدفّق CI/CD في `.github/workflows/`، وطبقة التخزين (`shared_preferences`)، والتوجيه (`app_route.dart`).

*انتهى التقرير.*
