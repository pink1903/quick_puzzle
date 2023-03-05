import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_modal.freezed.dart';
part 'user_modal.g.dart';

@freezed
class UserModal with _$UserModal {
  const factory UserModal({
    required String firstName,
    required String lastName,
    required String emailId,
    @Default(false) bool isActive,
  }) = _UserModal;

  factory UserModal.fromJson(Map<String, dynamic> json) =>
      _$UserModalFromJson(json);
}
