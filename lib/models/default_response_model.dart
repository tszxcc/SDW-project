import 'package:mhcs/models/base_response.dart';

class DefaultResponseModel extends BaseAPIResponse<dynamic, Null> {
  DefaultResponseModel(fullJson) : super(fullJson);

  @override
  dataToJson(data) {
    return null;
  }

  @override
  errorsToJson(errors) {
    return null;
  }

  @override
  jsonToData(Map<String, dynamic> json) {
    return json["data"];
  }

  @override
  jsonToError(Map<String, dynamic> json) {
    return null;
  }
}
