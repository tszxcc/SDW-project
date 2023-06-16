import 'package:mhcs/model_resources/manage_dependent_resource.dart';
import 'package:mhcs/models/manage_dependent/dependent_response_model.dart';
import 'package:mhcs/services/web_services.dart';

class DependentBloc {
  // The MovementResponseModel is the return model when we call the API
  // storeCheckInData is the method name that will be use when we want to use this bloc
  Future<DependentResponseModel> addDependent(
      // UserId and premiseId is the data required by this API
      String name,
      String icNumber,
      String relationType) async {
    // As this API use the POST method as there are data need to be post, so we call Webservice.post
    // In the Webservice.post function, we pass the Resource as the argument
    // along with the argument needed by the checkin method in the resource file
    return await Webservice.post(
        DependentResource.addDependent(name, icNumber, relationType));
  }

  // The MovementResponseModel is the return model when we call the API
  // storeCheckInData is the method name that will be use when we want to use this bloc
  Future<DependentResponseModel> updateDependent(
      // UserId is the data required by this API
      String name,
      String icNumber,
      String relationType) async {
    // As this API use the GET method as there are no data need to be post,
    // so we call Webservice.get
    // In the Webservice.get function, we pass the Resource as the argument
    // along with the argument needed by the checkout method in the resource file
    return await Webservice.post(
        DependentResource.updateDependent(name, icNumber, relationType));
  }

  // The ListMovementReponseModel is the return model when we call the API
  // storeCheckInData is the method name that will be use when we want to use this bloc
  Future<DependentResponseModel> deleteDependent(
      // UserId is the data required by this API
      dependentId) async {
    // As this API use the GET method as there are no data need to be post,
    // so we call Webservice.get
    // In the Webservice.get function, we pass the Resource as the argument
    // along with the argument needed by the checkout method in the resource file
    return await Webservice.get(DependentResource.deleteDependent(dependentId));
  }
}
