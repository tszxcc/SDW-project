import 'dart:convert';

import 'package:mhcs/models/default_response_model.dart';
import 'package:mhcs/models/manage_movement/check_in_dependent_request_model.dart';
import 'package:mhcs/models/manage_movement/list_movement_response_model.dart';
import 'package:mhcs/models/manage_movement/movement_response_model.dart';
import 'package:mhcs/services/resource.dart';

class ManageMovementResource {
  // User

  // Define the data need to be past to the api using the parameter
  static Resource checkIn(int userId, int premiseId) {
    return Resource(
      // Url is the API url
      url: 'check-in/$userId',
      parse: (response) {
        // Use MovementResponseModel Model
        return MovementResponseModel(json.decode(response.body));
      },
      // Just put data:{} if there are no data need to be post, else write the data in a json format as below
      data: {
        'premise_id': premiseId.toString(),
      },
    );
  }

  // Define the data need to be past to the api using the parameter,
  //and in this case, we only need to pass the userId to the API
  static Resource checkOut(int userId) {
    return Resource(
      // Url is the API url
      url: 'check-out/$userId',
      parse: (response) {
        // Use MovementResponseModel Model
        return MovementResponseModel(json.decode(response.body));
      },
      // Just put data:{} as there are no form data need to be pass
      data: {},
    );
  }

  // Define the data need to be past to the api using the parameter,
  //and in this case, we only need to pass the userId to the API
  static Resource listHistories(int userId) {
    return Resource(
      // Url is the API url
      url: 'movement-histories/$userId',
      parse: (response) {
        // Use List Movement Histories Model
        return ListMovementReponseModel(json.decode(response.body));
      },
      // Just put data:{} as there are no form data need to be pass
      data: {},
    );
  }

  static Resource showHistory(int movementId) {
    return Resource(
      // Url is the API url
      url: 'movement/$movementId',
      parse: (response) {
        // Use List Movement Histories Model
        return MovementResponseModel(json.decode(response.body));
      },
      // Just put data:{} as there are no form data need to be pass
      data: {},
    );
  }

  static Resource checkInWithDependent(
      int userId, CheckInDependentRequestModel requestModel) {
    return Resource(
      // Url is the API url
      url: 'check-in/dependents/$userId',
      parse: (response) {
        // Use MovementResponseModel Model
        return MovementResponseModel(json.decode(response.body));
      },
      // Send the list of dependent
      data: requestModel.toJson(),
    );
  }

  // Staff
  static Resource listHistoriesBasedOnUser(int userId) {
    return Resource(
      // Url is the API url
      url: 'user-movement-histories/$userId',
      parse: (response) {
        // Use List Movement Histories Model
        return ListMovementReponseModel(json.decode(response.body));
      },
      // Just put data:{} as there are no form data need to be pass
      data: {},
    );
  }

// Search User and get the user id
  static Resource searchMovement(String icNumber) {
    return Resource(
      // Url is the API url
      url: 'search-movement/$icNumber',
      parse: (response) {
        // Use MovementResponseModel Model
        return DefaultResponseModel(json.decode(response.body));
      },
      // Send the list of dependent
      data: {},
    );
  }
}
