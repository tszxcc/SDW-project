import 'package:mhcs/model_resources/manage_movement_resource.dart';
import 'package:mhcs/models/manage_movement/check_in_dependent_request_model.dart';
import 'package:mhcs/models/manage_movement/list_movement_response_model.dart';
import 'package:mhcs/models/manage_movement/movement_response_model.dart';
import 'package:mhcs/services/web_services.dart';

class MovementBloc {
  // The MovementResponseModel is the return model when we call the API
  // storeCheckInData is the method name that will be use when we want to use this bloc
  Future<MovementResponseModel> storeCheckInData(
      // UserId and premiseId is the data required by this API
      int userId,
      int premiseId) async {
    // As this API use the POST method as there are data need to be post, so we call Webservice.post
    // In the Webservice.post function, we pass the Resource as the argument
    // along with the argument needed by the checkin method in the resource file
    return await Webservice.post(
        ManageMovementResource.checkIn(userId, premiseId));
  }

  // The MovementResponseModel is the return model when we call the API
  // storeCheckInData is the method name that will be use when we want to use this bloc
  Future<MovementResponseModel> storeCheckOutData(
      // UserId is the data required by this API
      int userId) async {
    // As this API use the GET method as there are no data need to be post,
    // so we call Webservice.get
    // In the Webservice.get function, we pass the Resource as the argument
    // along with the argument needed by the checkout method in the resource file
    return await Webservice.get(ManageMovementResource.checkOut(userId));
  }

  // The ListMovementReponseModel is the return model when we call the API
  Future<ListMovementReponseModel> getListOfMovementHistories(
      // UserId is the data required by this API
      int userId) async {
    // As this API use the GET method as there are no data need to be post,
    // so we call Webservice.get
    // In the Webservice.get function, we pass the Resource as the argument
    // along with the argument needed by the checkout method in the resource file
    return await Webservice.get(ManageMovementResource.listHistories(userId));
  }

  Future<MovementResponseModel> showHistory(
      // UserId is the data required by this API
      int userId) async {
    // As this API use the GET method as there are no data need to be post,
    // so we call Webservice.get
    // In the Webservice.get function, we pass the Resource as the argument
    // along with the argument needed by the checkout method in the resource file
    return await Webservice.get(ManageMovementResource.showHistory(userId));
  }

  Future<MovementResponseModel> checkInWithDependent(
      // UserId and list od dependent is the data required by this API
      int userId,
      CheckInDependentRequestModel requestModel) async {
    // As this API use the POST method as there are data need to be post, so we call Webservice.post
    // In the Webservice.post function, we pass the Resource as the argument
    // along with the argument needed by the checkin method in the resource file
    return await Webservice.post(
        ManageMovementResource.checkInWithDependent(userId, requestModel));
  }
}
