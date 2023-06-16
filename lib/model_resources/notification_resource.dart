import 'dart:convert';

import 'package:mhcs/models/default_response_model.dart';
import 'package:mhcs/models/manage_notification/notification_list_response_model.dart';
import 'package:mhcs/models/manage_notification/notification_response_model.dart';
import 'package:mhcs/services/resource.dart';

class NotificationResource {
  static Resource listNotification() {
    return Resource(
      // Url is the API url
      url: 'list-notification',
      parse: (response) {
        // Use List Notification Histories Model
        return ListNotificationReponseModel(json.decode(response.body));
      },
      // Just put data:{} as there are no form data need to be pass
      data: {},
    );
  }

  static Resource addNotification(String title, String category, String message) {
    return Resource(
      // Url is the API url
      url: 'add-notification',
      parse: (response) {
        // Use MovementResponseModel Model
        return DefaultResponseModel(json.decode(response.body));
      },
      // Just put data:{} if there are no data need to be post, else write the data in a json format as below
      data: {
        'title': title.toString(),
        'category': category.toString(),
        'message': message.toString(),
      },
    );
  }

  static Resource deleteNotification(int id) {
    return Resource(
      // Url is the API url
      url: 'delete-notification/$id',
      parse: (response) {
        // Use MovementResponseModel Model
        return NotificationResponseModel(json.decode(response.body));
      },
      // Just put data:{} if there are no data need to be post, else write the data in a json format as below
      data: {},
    );
  }

  static Resource updateNotification(String title, String message, int id) {
    return Resource(
      // Url is the API url
      url: 'update-notification',
      parse: (response) {
        // Use MovementResponseModel Model
        return NotificationResponseModel(json.decode(response.body));
      },
      // Just put data:{} if there are no data need to be post, else write the data in a json format as below
      data: {
        'title': title.toString(),
        'message': message.toString(),
        'id': id.toInt(),
      },
    );
  }

  static Resource showNotification(int notificationtId) {
    return Resource(
      // Url is the API url
      url: 'notification/$notificationtId',
      parse: (response) {
        // Use List Movement Histories Model
        return NotificationResponseModel(json.decode(response.body));
      },
      // Just put data:{} as there are no form data need to be pass
      data: {},
    );
  }
}
