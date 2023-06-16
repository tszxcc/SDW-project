import 'dart:convert';
import 'package:mhcs/models/manage_dependent/dependent_model.dart';
import 'package:mhcs/models/manage_dependent/dependent_response_model.dart';
import 'package:mhcs/models/default_response_model.dart';
import 'package:mhcs/services/resource.dart';

class DependentResource {
  // User

  // Define the data need to be past to the api using the parameter
  static Resource addDependent(
      String name, String icNumber, String relationType) {
    return Resource(
      // Url is the API url
      url: 'add-Dependent',
      parse: (response) {
        // Use MovementResponseModel Model
        return DependentResponseModel(json.decode(response.body));
      },
      // Just put data:{} if there are no data need to be post, else write the data in a json format as below
      data: {
        'name': name,
        'icNumber': icNumber,
        'relationType': relationType,
      },
    );
  }

  // Define the data need to be past to the api using the parameter,
  //and in this case, we only need to pass the userId to the API
  static Resource updateDependent(
      String name, String icNumber, String relationType) {
    return Resource(
      // Url is the API url
      url: 'update-Dependent',
      parse: (response) {
        // Use DependentResponseModel Model
        return DependentResponseModel(json.decode(response.body));
      },
      // Just put data:{} as there are no form data need to be pass
      data: {
        'name': name,
        'icNumber': icNumber,
        'relationType': relationType,
      },
    );
  }

  // Define the data need to be past to the api using the parameter,
  //and in this case, we only need to pass the id to the API
  static Resource deleteDependent(int dependentId) {
    return Resource(
      // Url is the API url
      url: 'delete-Dependent/$dependentId',
      parse: (response) {
        // Use DependentResponse Model
        return DependentResponseModel(json.decode(response.body));
      },
      // Just put data:{} as there are no form data need to be pass
      data: {},
    );
  }

  // Resource for Staff
  static Resource listDependent() {
    return Resource(
      // Url is the API url
      url: 'list-Dependent',
      parse: (response) {
        // Use DependentResponse Model
        return DependentResponseModel(json.decode(response.body));
      },
      // Just put data:{} as there are no form data need to be pass
      data: {},
    );
  }
}
