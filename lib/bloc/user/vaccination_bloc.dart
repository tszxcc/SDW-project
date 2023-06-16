import 'package:mhcs/model_resources/manage_vaccination_resource.dart';
import 'package:mhcs/models/manage_vaccination/vaccination_model.dart';
import 'package:mhcs/models/manage_vaccination/vaccination_response_model.dart';
import 'package:mhcs/services/web_services.dart';

class VaccinationBloc {
  // The RegistrationResponseModel is the return model when we call the API
  // register is the method name that will be use when we want to use this bloc
  Future<VaccinationResponseModel> vaccineRegistration(
      // requestModel is the data required by this API
      VaccinationModel requestModel) async {
    // As this API use the POST method as there are data need to be post, so we call Webservice.post
    // In the Webservice.post function, we pass the Resource as the argument
    // along with the argument needed by the checkin method in the resource file
    return await Webservice.post(ManageVaccinationResource.vaccineRegistration(requestModel));
  }
}

