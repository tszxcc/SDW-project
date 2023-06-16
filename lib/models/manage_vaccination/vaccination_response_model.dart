import 'package:mhcs/models/base_response.dart';
import 'package:mhcs/models/manage_vaccination/vaccination_model.dart';

class VaccinationResponseModel
    extends BaseAPIResponse<List<VaccinationModel>, Null> {
  VaccinationResponseModel(fullJson) : super(fullJson);

  @override
  dataToJson(List<VaccinationModel> data) {
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
  List<VaccinationModel>? jsonToData(Map<String, dynamic> json) {
    data = [];

    json["data"].forEach((v) {
      data!.add(VaccinationModel.fromJson(v));
    });

    return data;
  }

  @override
  Null jsonToError(Map<String, dynamic> json) {
    return null;
  }
}
