import 'package:mhcs/models/base_response.dart';
import 'package:mhcs/models/user_model.dart';

class RegistrationResponseModel extends BaseAPIResponse<UserModel, Null> {
  RegistrationResponseModel(fullJson) : super(fullJson);

  @override
  dataToJson(UserModel data) {
    if (this.data != null) {
      return this.data!.toJson();
    }
    return null;
  }

  @override
  errorsToJson(Null errors) {
    return null;
  }

  @override
  UserModel? jsonToData(Map<String, dynamic> json) {
    return json["data"] != null ? UserModel.fromJson(json["data"]) : null;
  }

  @override
  Null jsonToError(Map<String, dynamic> json) {
    return null;
  }
}
