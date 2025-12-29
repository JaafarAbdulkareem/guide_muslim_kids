import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/core/manage/audio_cubit/audio_cubit.dart';
import 'package:guide_muslim_kids/core/utils/app_icon.dart';
import 'package:guide_muslim_kids/core/utils/show_error_snackbar.dart';
import 'package:guide_muslim_kids/core/widget/loading_audio_widget.dart';
import 'audio_button.dart';

class BlocAudioButtons extends StatelessWidget {
  final String audioKey;

  const BlocAudioButtons({super.key, required this.audioKey});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AudioCubit, AudioState>(
      listener: (context, state) {
        if (state is AudioError) {
          showErrorSnackbar(context, state.message);
        }
      },
      builder: (context, state) {
        final isLoading = state is AudioLoading;
        final isPlaying = state is AudioPlaying && state.key == audioKey;

        if (isLoading) {
          return const LoadingAudioWidget();
        }

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AudioButton(
              icon: AppIcon.pause,
              onPressed: isPlaying
                  ? () => context.read<AudioCubit>().pause()
                  : () {},
            ),
            const SizedBox(width: 12),
            AudioButton(
              icon: AppIcon.play,
              onPressed: () => context.read<AudioCubit>().play(audioKey),
            ),
          ],
        );
      },
    );
  }
}
