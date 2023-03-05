import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/services/profile/profile_model.dart';

part 'main_frame_state.freezed.dart';

@freezed
class AMSFrameState with _$AMSFrameState {
  const factory AMSFrameState.initial() = AMSFrameInitialState;

  const factory AMSFrameState.loading() = AMSFrameLoadingState;

  const factory AMSFrameState.loaded({
    ProfileModel? profile,
  }) = AMSFrameLoadedState;

  const factory AMSFrameState.failure({
    String? errorCode,
    String? errorMessage,
  }) = AMSFrameFailureState;
}
