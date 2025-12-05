import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';

class ShowNotification {
  static void showAnswerDialog({
    required BuildContext context,
    required bool isCorrect,
    VoidCallback? onContinue,
    bool isLastItem = false,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: isCorrect
                  ? AppColor.correctBorder
                  : AppColor.incorrectBorder,
              width: 5,
            ),
          ),
          backgroundColor: isCorrect
              ? AppColor.correctBackground
              : AppColor.incorrectBackground,
          title: Text(
            isCorrect ? "مـمـتـاز! 🎉" : "حاول مجدداً 🧐",
            textAlign: TextAlign.center,
            style: AppTextStyle.fontBold24(context).copyWith(
              color: isCorrect
                  ? AppColor.correctBorder
                  : AppColor.incorrectBorder,
            ),
          ),
          content: Text(
            isCorrect ? "أنت بطل! إجابة صحيحة." : "لا بأس! حاول مرة أخرى.",
            textAlign: TextAlign.center,
            style: AppTextStyle.fontBold20(context).copyWith(
              color: isCorrect
                  ? AppColor.correctBorder
                  : AppColor.incorrectBorder,
            ),
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isCorrect
                    ? AppColor.correctBorder
                    : AppColor.incorrectBorder,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                if (isCorrect && onContinue != null) {
                  onContinue();
                }
              },
              child: Text(
                isCorrect ? (isLastItem ? 'إنهاء' : 'التالي') : 'إغلاق',
                style: AppTextStyle.fontBold20(context).copyWith(
                  color: isCorrect
                      ? AppColor.correctBackground
                      : AppColor.incorrectBackground,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  static void showFeedbackSnackBar(BuildContext context, bool isCorrect) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        content: Text(
          isCorrect ? "أحسنت! إجابة صحيحة" : "انتبه! هذه الكلمة غير صحيحة",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: isCorrect ? Colors.green : Colors.redAccent,
        duration: Duration(milliseconds: isCorrect ? 1000 : 1500),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
