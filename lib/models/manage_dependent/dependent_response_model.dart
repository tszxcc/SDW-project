import 'package:mhcs/models/base_response.dart';
import 'package:mhcs/models/manage_dependent/dependent_model.dart';

class DependentResponseModel extends BaseAPIResponse<DependentModel, Null> {
  DependentResponseModel(fullJson) : super(fullJson);

  @override
  dataToJson(DependentModel data) {
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
  DependentModel? jsonToData(Map<String, dynamic> json) {
    return json["data"] != null ? DependentModel.fromJson(json["data"]) : null;
  }

  @override
  Null jsonToError(Map<String, dynamic> json) {
    return null;
  }
}
