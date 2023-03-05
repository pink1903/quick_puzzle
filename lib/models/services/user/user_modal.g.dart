// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModal _$$_UserModalFromJson(Map<String, dynamic> json) => _$_UserModal(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      emailId: json['emailId'] as String,
      isActive: json['isActive'] as bool? ?? false,
    );

Map<String, dynamic> _$$_UserModalToJson(_$_UserModal instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'emailId': instance.emailId,
      'isActive': instance.isActive,
    };
