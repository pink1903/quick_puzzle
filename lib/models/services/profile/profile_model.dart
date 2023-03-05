import 'get_agent_profile_response.dart';

class ProfileModel extends FullProfileResponse {
  ProfileModel({
    super.address,
    super.azureUid,
    super.birthday,
    super.createdAt,
    super.createdBy,
    super.email,
    super.fullName,
    super.idNumber,
    super.phone,
    super.updatedAt,
    super.updatedBy,
    super.username,
  });

  void init() {
    fullName = '';
    phone = '';
  }
}
