// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_modal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModal _$UserModalFromJson(Map<String, dynamic> json) {
  return _UserModal.fromJson(json);
}

/// @nodoc
mixin _$UserModal {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get emailId => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModalCopyWith<UserModal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModalCopyWith<$Res> {
  factory $UserModalCopyWith(UserModal value, $Res Function(UserModal) then) =
      _$UserModalCopyWithImpl<$Res, UserModal>;
  @useResult
  $Res call({String firstName, String lastName, String emailId, bool isActive});
}

/// @nodoc
class _$UserModalCopyWithImpl<$Res, $Val extends UserModal>
    implements $UserModalCopyWith<$Res> {
  _$UserModalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? emailId = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      emailId: null == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModalCopyWith<$Res> implements $UserModalCopyWith<$Res> {
  factory _$$_UserModalCopyWith(
          _$_UserModal value, $Res Function(_$_UserModal) then) =
      __$$_UserModalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstName, String lastName, String emailId, bool isActive});
}

/// @nodoc
class __$$_UserModalCopyWithImpl<$Res>
    extends _$UserModalCopyWithImpl<$Res, _$_UserModal>
    implements _$$_UserModalCopyWith<$Res> {
  __$$_UserModalCopyWithImpl(
      _$_UserModal _value, $Res Function(_$_UserModal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? emailId = null,
    Object? isActive = null,
  }) {
    return _then(_$_UserModal(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      emailId: null == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModal implements _UserModal {
  const _$_UserModal(
      {required this.firstName,
      required this.lastName,
      required this.emailId,
      this.isActive = false});

  factory _$_UserModal.fromJson(Map<String, dynamic> json) =>
      _$$_UserModalFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String emailId;
  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString() {
    return 'UserModal(firstName: $firstName, lastName: $lastName, emailId: $emailId, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModal &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, emailId, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModalCopyWith<_$_UserModal> get copyWith =>
      __$$_UserModalCopyWithImpl<_$_UserModal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModalToJson(
      this,
    );
  }
}

abstract class _UserModal implements UserModal {
  const factory _UserModal(
      {required final String firstName,
      required final String lastName,
      required final String emailId,
      final bool isActive}) = _$_UserModal;

  factory _UserModal.fromJson(Map<String, dynamic> json) =
      _$_UserModal.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get emailId;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_UserModalCopyWith<_$_UserModal> get copyWith =>
      throw _privateConstructorUsedError;
}
