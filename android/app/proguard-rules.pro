# Flutter / Dart engine — required keep rules for R8 with minify enabled.
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }
-dontwarn io.flutter.embedding.**

# flutter_tts — uses platform TTS APIs via reflection
-keep class com.tundralabs.fluttertts.** { *; }

# audioplayers
-keep class xyz.luan.audioplayers.** { *; }

# Keep annotations and generic signatures (freezed / json)
-keepattributes *Annotation*, Signature, InnerClasses, EnclosingMethod

# Suppress common R8 warnings for optional dependencies
-dontwarn javax.annotation.**
