// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_agent_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FullProfileResponse _$FullProfileResponseFromJson(Map<String, dynamic> json) =>
    FullProfileResponse(
      username: json['username'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      idNumber: json['idNumber'] as String?,
      address: json['address'] as String?,
      birthday: const ForceLocalDateTimeConverter()
          .fromJson(json['birthday'] as String?),
      fullName: json['fullName'] as String?,
      azureUid: json['azureUid'] as String?,
      createdBy: json['createdBy'] as String?,
      createdAt: const ForceLocalDateTimeConverter()
          .fromJson(json['createdAt'] as String?),
      updatedBy: json['updatedBy'] as String?,
      updatedAt: const ForceLocalDateTimeConverter()
          .fromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$FullProfileResponseToJson(
        FullProfileResponse instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'idNumber': instance.idNumber,
      'address': instance.address,
      'birthday': const ForceLocalDateTimeConverter().toJson(instance.birthday),
      'fullName': instance.fullName,
      'azureUid': instance.azureUid,
      'createdBy': instance.createdBy,
      'createdAt':
          const ForceLocalDateTimeConverter().toJson(instance.createdAt),
      'updatedBy': instance.updatedBy,
      'updatedAt':
          const ForceLocalDateTimeConverter().toJson(instance.updatedAt),
    };
