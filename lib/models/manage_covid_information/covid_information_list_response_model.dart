import 'package:mhcs/models/base_response.dart';
import 'package:mhcs/models/manage_covid_information/covid_information_model.dart';

class ListCovidInformationReponseModel
    extends BaseAPIResponse<List<CovidInformationModel>, Null> {
  ListCovidInformationReponseModel(fullJson) : super(fullJson);

  @override
  dataToJson(List<CovidInformationModel> data) {
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
  List<CovidInformationModel>? jsonToData(Map<String, dynamic> json) {
    data = [];

    json["data"].forEach((v) {
      data!.add(CovidInformationModel.fromJson(v));
    });

    return data;
  }

  @override
  Null jsonToError(Map<String, dynamic> json) {
    return null;
  }
}
