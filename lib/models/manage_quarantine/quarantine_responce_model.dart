import 'package:mhcs/models/base_response.dart';
import 'package:mhcs/models/manage_quarantine/quarantine_model.dart';

class QuarantineResponseModel extends BaseAPIResponse<QuarantineModel, Null> {
  QuarantineResponseModel(fullJson) : super(fullJson);

  @override
  dataToJson(QuarantineModel data) {
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
  QuarantineModel? jsonToData(Map<String, dynamic> json) {
    return json["data"] != null ? QuarantineModel.fromJson(json["data"]) : null;
  }

  @override
  Null jsonToError(Map<String, dynamic> json) {
    return null;
  }
}
