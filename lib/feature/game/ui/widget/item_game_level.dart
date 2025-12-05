import 'dart:math';
import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_icon.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class ItemGameLevel extends StatefulWidget {
  final String levelTitle;
  final String levelSubtitle;
  final bool isUnlocked;
  final Widget targetScreen;
  final Color color;
  final Color? shadowColor;
  final IconData icon;
  final String? previousLevelName;

  const ItemGameLevel({
    super.key,
    required this.levelTitle,
    required this.levelSubtitle,
    required this.isUnlocked,
    required this.targetScreen,
    required this.color,
    this.shadowColor,
    required this.icon,
    this.previousLevelName,
  });

  @override
  State<ItemGameLevel> createState() => ItemGameLevelState();
}

class ItemGameLevelState extends State<ItemGameLevel>
    with TickerProviderStateMixin {
  // 1. Controller for the "Press Down" effect
  late AnimationController _pressController;

  // 2. Controller for the "Shake" (Locked) effect
  late AnimationController _shakeController;
  late Animation<double> shakeAnimation;

  @override
  void initState() {
    super.initState();

    // -- Press Animation --
    _pressController =
        AnimationController(
          vsync: this,
          duration: const Duration(milliseconds: 100),
          lowerBound: 0.0,
          upperBound: 0.1,
        )..addListener(() {
          setState(() {});
        });

    // -- Shake Animation (For Locked State) --
    _shakeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    // Create a shake curve (Sine wave)
    shakeAnimation =
        Tween<double>(
            begin: 0.0,
            end: 10.0,
          ).chain(CurveTween(curve: Curves.elasticIn)).animate(_shakeController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _shakeController.reset();
            }
          });
  }

  @override
  void dispose() {
    _pressController.dispose();
    _shakeController.dispose();
    super.dispose();
  }

  void _onTapDown(TapDownDetails details) => _pressController.forward();

  void _onTapUp(TapUpDetails details) {
    _pressController.reverse();

    if (widget.isUnlocked) {
      // --- UNLOCKED LOGIC ---
      Future.delayed(const Duration(milliseconds: 150), () {
        if (!mounted) return;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget.targetScreen),
        );
      });
    } else {
      // --- LOCKED LOGIC ---
      // 1. Play Shake Animation
      _shakeController.forward();

      // 2. Show the SnackBar using the separate function
      _showLockedSnackBar();
    }
  }

  // --- SEPARATE SNACKBAR FUNCTION ---
  void _showLockedSnackBar() {
    final s = S.of(context);
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColor.error,
        behavior:
            SnackBarBehavior.floating, // Floating looks better/more animated
        margin: const EdgeInsets.all(16),
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        duration: const Duration(seconds: 2),
        content: Row(
          children: [
            // Animated shaking lock icon inside the SnackBar
            const Icon(AppIcon.lock, color: Colors.white, size: 28),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    s.snackBarTitleLockedStage,
                    style: AppTextStyle.fontBold16(
                      context,
                    ).copyWith(color: AppColor.secondaryText),
                  ),
                  Text(
                    "${s.snackBarMessageLockedStage} ${widget.previousLevelName ?? s.snackBarPrevious}",

                    style: AppTextStyle.fontSemiBold16(
                      context,
                    ).copyWith(color: AppColor.secondaryText, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double scale = 1 - _pressController.value;

    final displayShadowColor = widget.isUnlocked
        ? (widget.shadowColor ?? widget.color.withValues(alpha: 0.4))
        : Colors.black12;

    final gradientColors = widget.isUnlocked
        ? [widget.color.withValues(alpha: 0.8), widget.color]
        : [AppColor.lockedStartColor, AppColor.lockedEndColor];

    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: () => _pressController.reverse(),
      // Wrap everything in AnimatedBuilder to handle the Shake
      child: AnimatedBuilder(
        animation: _shakeController,
        builder: (context, child) {
          // Calculate shake offset using Sine wave
          final double sineValue = sin(
            _shakeController.value * pi * 4,
          ); // 4 shakes
          final double xOffset = sineValue * 6; // Shake distance

          return Transform.translate(
            offset: Offset(xOffset, 0), // Move Left/Right
            child: child,
          );
        },
        child: Transform.scale(
          scale: scale,
          child: Container(
            width: 160,
            height: 180,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: gradientColors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: displayShadowColor,
                  blurRadius: 12,
                  offset: const Offset(0, 8),
                ),
              ],
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.4),
                width: 3,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.25),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    widget.isUnlocked ? widget.icon : AppIcon.lock,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
                const SizedBox(height: 12),
                FittedBox(
                  child: Text(
                    widget.levelTitle,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.fontBold20(context).copyWith(
                      fontWeight: FontWeight.w900,
                      color: AppColor.secondaryText,
                      shadows: const [
                        Shadow(
                          offset: Offset(1, 1),
                          color: Colors.black26,
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                if (widget.isUnlocked)
                  Expanded(
                    child: Text(
                      widget.levelSubtitle,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.fontMedium11(context),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
