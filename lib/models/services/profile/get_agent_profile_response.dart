import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utilities/converters/datetime_converter.dart';

part 'get_agent_profile_response.g.dart';

abstract class BaseResponseModel<T> {
  T fromJson(Map<String, dynamic> json);
}

@JsonSerializable()
@ForceLocalDateTimeConverter()
class FullProfileResponse extends BaseResponseModel<FullProfileResponse> {
  String? username;
  String? email;
  String? phone;
  String? idNumber;
  String? address;
  DateTime? birthday;
  String? fullName;
  String? azureUid;
  String? createdBy;
  DateTime? createdAt;
  String? updatedBy;
  DateTime? updatedAt;

  FullProfileResponse(
      {this.username,
      this.email,
      this.phone,
      this.idNumber,
      this.address,
      this.birthday,
      this.fullName,
      this.azureUid,
      this.createdBy,
      this.createdAt,
      this.updatedBy,
      this.updatedAt});

  @override
  FullProfileResponse fromJson(Map<String, dynamic> json) =>
      _$FullProfileResponseFromJson(json);
}
