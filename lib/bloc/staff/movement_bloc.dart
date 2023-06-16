import 'package:mhcs/model_resources/manage_movement_resource.dart';
import 'package:mhcs/models/default_response_model.dart';
import 'package:mhcs/models/manage_movement/list_movement_response_model.dart';
import 'package:mhcs/services/web_services.dart';

class MovementBloc {
  // List of histories for specific user
  Future<ListMovementReponseModel> listHistoriesBasedOnUser(int userId) async {
    return await Webservice.get(
        ManageMovementResource.listHistoriesBasedOnUser(userId));
  }

  // Search user based on ic number
  Future<DefaultResponseModel> searchMovement(String icNumber) async {
    return await Webservice.get(
        ManageMovementResource.searchMovement(icNumber));
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
}
