// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_frame_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainFrameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProfileModel? profile) loaded,
    required TResult Function(String? errorCode, String? errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProfileModel? profile)? loaded,
    TResult? Function(String? errorCode, String? errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel? profile)? loaded,
    TResult Function(String? errorCode, String? errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainFrameInitialState value) initial,
    required TResult Function(MainFrameLoadingState value) loading,
    required TResult Function(FrameLoadedState value) loaded,
    required TResult Function(FrameFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainFrameInitialState value)? initial,
    TResult? Function(MainFrameLoadingState value)? loading,
    TResult? Function(FrameLoadedState value)? loaded,
    TResult? Function(FrameFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainFrameInitialState value)? initial,
    TResult Function(MainFrameLoadingState value)? loading,
    TResult Function(FrameLoadedState value)? loaded,
    TResult Function(FrameFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFrameStateCopyWith<$Res> {
  factory $MainFrameStateCopyWith(
          MainFrameState value, $Res Function(MainFrameState) then) =
      _$MainFrameStateCopyWithImpl<$Res, MainFrameState>;
}

/// @nodoc
class _$MainFrameStateCopyWithImpl<$Res, $Val extends MainFrameState>
    implements $MainFrameStateCopyWith<$Res> {
  _$MainFrameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MainFrameInitialStateCopyWith<$Res> {
  factory _$$MainFrameInitialStateCopyWith(_$MainFrameInitialState value,
          $Res Function(_$MainFrameInitialState) then) =
      __$$MainFrameInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainFrameInitialStateCopyWithImpl<$Res>
    extends _$MainFrameStateCopyWithImpl<$Res, _$MainFrameInitialState>
    implements _$$MainFrameInitialStateCopyWith<$Res> {
  __$$MainFrameInitialStateCopyWithImpl(_$MainFrameInitialState _value,
      $Res Function(_$MainFrameInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainFrameInitialState implements MainFrameInitialState {
  const _$MainFrameInitialState();

  @override
  String toString() {
    return 'MainFrameState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainFrameInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProfileModel? profile) loaded,
    required TResult Function(String? errorCode, String? errorMessage) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProfileModel? profile)? loaded,
    TResult? Function(String? errorCode, String? errorMessage)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel? profile)? loaded,
    TResult Function(String? errorCode, String? errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainFrameInitialState value) initial,
    required TResult Function(MainFrameLoadingState value) loading,
    required TResult Function(FrameLoadedState value) loaded,
    required TResult Function(FrameFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainFrameInitialState value)? initial,
    TResult? Function(MainFrameLoadingState value)? loading,
    TResult? Function(FrameLoadedState value)? loaded,
    TResult? Function(FrameFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainFrameInitialState value)? initial,
    TResult Function(MainFrameLoadingState value)? loading,
    TResult Function(FrameLoadedState value)? loaded,
    TResult Function(FrameFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MainFrameInitialState implements MainFrameState {
  const factory MainFrameInitialState() = _$MainFrameInitialState;
}

/// @nodoc
abstract class _$$MainFrameLoadingStateCopyWith<$Res> {
  factory _$$MainFrameLoadingStateCopyWith(_$MainFrameLoadingState value,
          $Res Function(_$MainFrameLoadingState) then) =
      __$$MainFrameLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainFrameLoadingStateCopyWithImpl<$Res>
    extends _$MainFrameStateCopyWithImpl<$Res, _$MainFrameLoadingState>
    implements _$$MainFrameLoadingStateCopyWith<$Res> {
  __$$MainFrameLoadingStateCopyWithImpl(_$MainFrameLoadingState _value,
      $Res Function(_$MainFrameLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainFrameLoadingState implements MainFrameLoadingState {
  const _$MainFrameLoadingState();

  @override
  String toString() {
    return 'MainFrameState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainFrameLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProfileModel? profile) loaded,
    required TResult Function(String? errorCode, String? errorMessage) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProfileModel? profile)? loaded,
    TResult? Function(String? errorCode, String? errorMessage)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel? profile)? loaded,
    TResult Function(String? errorCode, String? errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainFrameInitialState value) initial,
    required TResult Function(MainFrameLoadingState value) loading,
    required TResult Function(FrameLoadedState value) loaded,
    required TResult Function(FrameFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainFrameInitialState value)? initial,
    TResult? Function(MainFrameLoadingState value)? loading,
    TResult? Function(FrameLoadedState value)? loaded,
    TResult? Function(FrameFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainFrameInitialState value)? initial,
    TResult Function(MainFrameLoadingState value)? loading,
    TResult Function(FrameLoadedState value)? loaded,
    TResult Function(FrameFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MainFrameLoadingState implements MainFrameState {
  const factory MainFrameLoadingState() = _$MainFrameLoadingState;
}

/// @nodoc
abstract class _$$FrameLoadedStateCopyWith<$Res> {
  factory _$$FrameLoadedStateCopyWith(
          _$FrameLoadedState value, $Res Function(_$FrameLoadedState) then) =
      __$$FrameLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileModel? profile});
}

/// @nodoc
class __$$FrameLoadedStateCopyWithImpl<$Res>
    extends _$MainFrameStateCopyWithImpl<$Res, _$FrameLoadedState>
    implements _$$FrameLoadedStateCopyWith<$Res> {
  __$$FrameLoadedStateCopyWithImpl(
      _$FrameLoadedState _value, $Res Function(_$FrameLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(_$FrameLoadedState(
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
    ));
  }
}

/// @nodoc

class _$FrameLoadedState implements FrameLoadedState {
  const _$FrameLoadedState({this.profile});

  @override
  final ProfileModel? profile;

  @override
  String toString() {
    return 'MainFrameState.loaded(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FrameLoadedState &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FrameLoadedStateCopyWith<_$FrameLoadedState> get copyWith =>
      __$$FrameLoadedStateCopyWithImpl<_$FrameLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProfileModel? profile) loaded,
    required TResult Function(String? errorCode, String? errorMessage) failure,
  }) {
    return loaded(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProfileModel? profile)? loaded,
    TResult? Function(String? errorCode, String? errorMessage)? failure,
  }) {
    return loaded?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel? profile)? loaded,
    TResult Function(String? errorCode, String? errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainFrameInitialState value) initial,
    required TResult Function(MainFrameLoadingState value) loading,
    required TResult Function(FrameLoadedState value) loaded,
    required TResult Function(FrameFailureState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainFrameInitialState value)? initial,
    TResult? Function(MainFrameLoadingState value)? loading,
    TResult? Function(FrameLoadedState value)? loaded,
    TResult? Function(FrameFailureState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainFrameInitialState value)? initial,
    TResult Function(MainFrameLoadingState value)? loading,
    TResult Function(FrameLoadedState value)? loaded,
    TResult Function(FrameFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FrameLoadedState implements MainFrameState {
  const factory FrameLoadedState({final ProfileModel? profile}) =
      _$FrameLoadedState;

  ProfileModel? get profile;
  @JsonKey(ignore: true)
  _$$FrameLoadedStateCopyWith<_$FrameLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FrameFailureStateCopyWith<$Res> {
  factory _$$FrameFailureStateCopyWith(
          _$FrameFailureState value, $Res Function(_$FrameFailureState) then) =
      __$$FrameFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorCode, String? errorMessage});
}

/// @nodoc
class __$$FrameFailureStateCopyWithImpl<$Res>
    extends _$MainFrameStateCopyWithImpl<$Res, _$FrameFailureState>
    implements _$$FrameFailureStateCopyWith<$Res> {
  __$$FrameFailureStateCopyWithImpl(
      _$FrameFailureState _value, $Res Function(_$FrameFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$FrameFailureState(
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FrameFailureState implements FrameFailureState {
  const _$FrameFailureState({this.errorCode, this.errorMessage});

  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'MainFrameState.failure(errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FrameFailureState &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FrameFailureStateCopyWith<_$FrameFailureState> get copyWith =>
      __$$FrameFailureStateCopyWithImpl<_$FrameFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProfileModel? profile) loaded,
    required TResult Function(String? errorCode, String? errorMessage) failure,
  }) {
    return failure(errorCode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProfileModel? profile)? loaded,
    TResult? Function(String? errorCode, String? errorMessage)? failure,
  }) {
    return failure?.call(errorCode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel? profile)? loaded,
    TResult Function(String? errorCode, String? errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorCode, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainFrameInitialState value) initial,
    required TResult Function(MainFrameLoadingState value) loading,
    required TResult Function(FrameLoadedState value) loaded,
    required TResult Function(FrameFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainFrameInitialState value)? initial,
    TResult? Function(MainFrameLoadingState value)? loading,
    TResult? Function(FrameLoadedState value)? loaded,
    TResult? Function(FrameFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainFrameInitialState value)? initial,
    TResult Function(MainFrameLoadingState value)? loading,
    TResult Function(FrameLoadedState value)? loaded,
    TResult Function(FrameFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FrameFailureState implements MainFrameState {
  const factory FrameFailureState(
      {final String? errorCode,
      final String? errorMessage}) = _$FrameFailureState;

  String? get errorCode;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$FrameFailureStateCopyWith<_$FrameFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
