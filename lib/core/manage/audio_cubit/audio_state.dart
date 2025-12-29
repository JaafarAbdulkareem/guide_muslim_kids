part of 'audio_cubit.dart';

abstract class AudioState {
  const AudioState();
}

class AudioInitial extends AudioState {}

class AudioLoading extends AudioState {
  final String key;
  const AudioLoading(this.key);
}

class AudioPlaying extends AudioState {
  final String key;
  const AudioPlaying(this.key);
}

class AudioPaused extends AudioState {
  final String? key;
  const AudioPaused(this.key);
}

class AudioStopped extends AudioState {
  final String? key;
  const AudioStopped(this.key);
}

class AudioError extends AudioState {
  final String message;
  const AudioError(this.message);
}
