import 'package:mhcs/model_resources/notification_resource.dart';
import 'package:mhcs/models/default_response_model.dart';
import 'package:mhcs/models/manage_notification/notification_list_response_model.dart';
import 'package:mhcs/models/manage_notification/notification_model.dart';
import 'package:mhcs/models/manage_notification/notification_response_model.dart';
import 'package:mhcs/services/web_services.dart';

class NotificationBloc {
  Future<ListNotificationReponseModel> getListOfNotification() async {
    // As this API use the GET method as there are no data need to be post,
    // so we call Webservice.get
    // In the Webservice.get function, we pass the Resource as the argument
    // along with the argument needed by the checkout method in the resource file
    return await Webservice.get(NotificationResource.listNotification());
  }

  Future<NotificationModel> getNotification(
      // UserId is the data required by this API
      int id) async {
    // As this API use the GET method as there are no data need to be post,
    // so we call Webservice.get
    // In the Webservice.get function, we pass the Resource as the argument
    // along with the argument needed by the checkout method in the resource file
    return await Webservice.get(NotificationResource.showNotification(id));
  }

  Future<DefaultResponseModel> addinNotification(
      // requestModel is the data required by this API
      String title,
      String category,
      String message) async {
    // As this API use the POST method as there are data need to be post, so we call Webservice.post
    // In the Webservice.post function, we pass the Resource as the argument
    // along with the argument needed by the checkin method in the resource file
    return await Webservice.post(
        NotificationResource.addNotification(title, category, message));
  }

  Future<NotificationResponseModel> deletingNotification(
      // requestModel is the data required by this API
      int id) async {
    // As this API use the POST method as there are data need to be post, so we call Webservice.post
    // In the Webservice.post function, we pass the Resource as the argument
    // along with the argument needed by the checkin method in the resource file
    return await Webservice.post(NotificationResource.deleteNotification(id));
  }

  Future<NotificationResponseModel> updatingNotification(
      // requestModel is the data required by this API
      int id,
      String title,
      String message) async {
    // As this API use the POST method as there are data need to be post, so we call Webservice.post
    // In the Webservice.post function, we pass the Resource as the argument
    // along with the argument needed by the checkin method in the resource file
    return await Webservice.post(
        NotificationResource.updateNotification(title, message, id));
  }
}
