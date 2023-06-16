import 'package:mhcs/models/base_response.dart';
import 'package:mhcs/models/manage_quarantine/quarantine_model.dart';

class ListQuarantineResponseModel
    extends BaseAPIResponse<List<QuarantineModel>, Null> {
  ListQuarantineResponseModel(fullJson) : super(fullJson);

  @override
  dataToJson(List<QuarantineModel> data) {
    if (this.data != null) {
      return this.data!.map((v) => v.toJson()).toList();
    }
    return null;
  }

  @override
  errorsToJson(Null errors) {
    return null;
  }

  @override
  List<QuarantineModel>? jsonToData(Map<String, dynamic> json) {
    data = [];

    json["data"].forEach((v) {
      data!.add(QuarantineModel.fromJson(v));
    });

    return data;
  }

  @override
  Null jsonToError(Map<String, dynamic> json) {
    return null;
  }
}
