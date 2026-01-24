import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/core/manage/text_to_speech_cubit/text_to_speech_cubit.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_icon.dart';

class TextToSpeechWidget extends StatelessWidget {
  const TextToSpeechWidget({
    super.key,
    required this.textToSpeech,
    required this.child,
    this.isLamShamsiya = false,
  });
  final String textToSpeech;
  final Widget child;
  final bool isLamShamsiya;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isLamShamsiya) {
          context.read<TextToSpeechCubit>().speakText(textToSpeech);
        } else {
          context.read<TextToSpeechCubit>().speakTextLam();
        }
      },
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(AppIcon.speaker, size: 30, color: AppColor.lettersText1),
            const SizedBox(width: 10),
            child,
          ],
        ),
      ),
    );
  }
}
