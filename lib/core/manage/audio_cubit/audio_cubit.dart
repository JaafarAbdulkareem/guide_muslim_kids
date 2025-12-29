import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

part 'audio_state.dart';

class AudioCubit extends Cubit<AudioState> {
  AudioCubit() : super(AudioInitial());

  final AudioPlayer _player = AudioPlayer();
  String? _currentKey;

  Future<void> play(String key) async {
    if (_currentKey == key && state is AudioPlaying) {
      await pause();
      return;
    }

    _currentKey = key;
    emit(AudioLoading(key));

    try {
      await _player.stop();
      await _player.play(AssetSource(key));

      emit(AudioPlaying(key));

      _player.onPlayerComplete.listen((_) {
        emit(AudioStopped(key));
      });
    } catch (e, stack) {
      log("Error Audio  : $e \n $stack");
      emit(AudioError(S.current.alertTryAgain));
    }
  }

  Future<void> pause() async {
    await _player.pause();
    emit(AudioPaused(_currentKey));
  }

  Future<void> stop() async {
    await _player.stop();
    emit(AudioStopped(_currentKey));
  }

  @override
  Future<void> close() {
    _player.dispose();
    return super.close();
  }
}
