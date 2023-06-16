import 'package:mhcs/models/base_response.dart';
import 'package:mhcs/models/manage_movement/movement_model.dart';

class MovementResponseModel extends BaseAPIResponse<MovementModel, Null> {
  MovementResponseModel(fullJson) : super(fullJson);

  @override
  dataToJson(MovementModel data) {
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
  MovementModel? jsonToData(Map<String, dynamic> json) {
    return json["data"] != null ? MovementModel.fromJson(json["data"]) : null;
  }

  @override
  Null jsonToError(Map<String, dynamic> json) {
    return null;
  }
}
