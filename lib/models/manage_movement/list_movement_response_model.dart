import 'package:mhcs/models/base_response.dart';
import 'package:mhcs/models/manage_movement/movement_model.dart';

class ListMovementReponseModel
    extends BaseAPIResponse<List<MovementModel>, Null> {
  ListMovementReponseModel(fullJson) : super(fullJson);

  @override
  dataToJson(List<MovementModel> data) {
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
  List<MovementModel>? jsonToData(Map<String, dynamic> json) {
    data = [];

    json["data"].forEach((v) {
      data!.add(MovementModel.fromJson(v));
    });

    return data;
  }

  @override
  Null jsonToError(Map<String, dynamic> json) {
    return null;
  }
}
