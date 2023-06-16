import 'package:mhcs/model_resources/notification_resource.dart';
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
}
