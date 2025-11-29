import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class ShowNotification {
  static void showAnswerDialog({
    required BuildContext context,
    required bool isCorrect,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // final s = S.of(context);
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
            // ? s.dialogTitleCorrect
            // : s.dialogTitleIncorrect, // Excellent! / Try again
            textAlign: TextAlign.center,
            style: AppTextStyle.fontBold24(context).copyWith(
              color: isCorrect
                  ? AppColor.correctBorder
                  : AppColor.incorrectBorder,
            ),
          ),
          content: Text(
            isCorrect
                ? "أنت بطل! لقد قمت بوصل الحروف بشكل صحيح."
                : "لا بأس! هذه الحروف تحتاج مزيداً من التدريب.",
            // ? s.dialogMessageCorrect : s.dialogMessageIncorrect,
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
              child: Text(
                'إغلاق', // Close
                style: AppTextStyle.fontBold20(context).copyWith(
                  color: isCorrect
                      ? AppColor.correctBackground
                      : AppColor.incorrectBackground,
                ),
                //  TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
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
        content: Text(
          isCorrect ? "أحسنت! إجابة صحيحة" : "انتبه! هذه الكلمة لا تحتوي على سكون",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: isCorrect ? Colors.green : Colors.redAccent,
        duration: Duration(milliseconds: isCorrect ? 1000 : 1500),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
