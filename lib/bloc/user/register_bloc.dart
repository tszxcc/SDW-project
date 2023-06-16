import 'package:mhcs/model_resources/registration_resource.dart';
import 'package:mhcs/models/registration/registration_request_model.dart';
import 'package:mhcs/models/registration/registration_response_model.dart';
import 'package:mhcs/services/web_services.dart';

class RegistrationBloc {
  // The RegistrationResponseModel is the return model when we call the API
  // register is the method name that will be use when we want to use this bloc
  Future<RegistrationResponseModel> register(
      // requestModel is the data required by this API
      RegistrationRequestModel requestModel) async {
    // As this API use the POST method as there are data need to be post, so we call Webservice.post
    // In the Webservice.post function, we pass the Resource as the argument
    // along with the argument needed by the checkin method in the resource file
    return await Webservice.post(RegistrationResource.register(requestModel));
  }
}
