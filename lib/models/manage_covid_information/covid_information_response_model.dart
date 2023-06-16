import 'package:mhcs/models/base_response.dart';
import 'package:mhcs/models/manage_covid_information/covid_information_model.dart';

class CovidInformationResponseModel
    extends BaseAPIResponse<CovidInformationModel, Null> {
  CovidInformationResponseModel(fullJson) : super(fullJson);

  @override
  dataToJson(CovidInformationModel data) {
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
  CovidInformationModel? jsonToData(Map<String, dynamic> json) {
    return json["data"] != null
        ? CovidInformationModel.fromJson(json["data"])
        : null;
  }

  @override
  Null jsonToError(Map<String, dynamic> json) {
    return null;
  }
}
