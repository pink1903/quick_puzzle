import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/services/profile/profile_model.dart';

part 'main_frame_state.freezed.dart';

@freezed
class MainFrameState with _$MainFrameState {
  const factory MainFrameState.initial() = MainFrameInitialState;

  const factory MainFrameState.loading() = MainFrameLoadingState;

  const factory MainFrameState.loaded({
    ProfileModel? profile,
  }) = FrameLoadedState;

  const factory MainFrameState.failure({
    String? errorCode,
    String? errorMessage,
  }) = FrameFailureState;
}
