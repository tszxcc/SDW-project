import 'package:mhcs/models/base_response.dart';
import 'package:mhcs/models/manage_notification/notification_model.dart';

class NotificationResponseModel
    extends BaseAPIResponse<NotificationModel, Null> {
  NotificationResponseModel(fullJson) : super(fullJson);

  @override
  dataToJson(NotificationModel data) {
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
  NotificationModel? jsonToData(Map<String, dynamic> json) {
    return json["data"] != null
        ? NotificationModel.fromJson(json["data"])
        : null;
  }

  @override
  Null jsonToError(Map<String, dynamic> json) {
    return null;
  }
}
