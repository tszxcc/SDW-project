import 'package:mhcs/models/base_response.dart';
import 'package:mhcs/models/manage_notification/notification_model.dart';

class ListNotificationReponseModel
    extends BaseAPIResponse<List<NotificationModel>, Null> {
  ListNotificationReponseModel(fullJson) : super(fullJson);

  @override
  dataToJson(List<NotificationModel> data) {
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
  List<NotificationModel>? jsonToData(Map<String, dynamic> json) {
    data = [];

    json["data"].forEach((v) {
      data!.add(NotificationModel.fromJson(v));
    });

    return data;
  }

  @override
  Null jsonToError(Map<String, dynamic> json) {
    return null;
  }
}
