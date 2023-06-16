import 'dart:convert';
import 'package:mhcs/models/manage_vaccination/vaccination_model.dart';
import 'package:mhcs/models/manage_vaccination/vaccination_response_model.dart';
import 'package:mhcs/services/resource.dart';

class ManageVaccinationResource {
  // Define the data need to be past to the api using the parameter
  static Resource vaccineRegistration(VaccinationModel requestModel) {
    return Resource(
      // Url is the API url
      url: 'vaccine',
      parse: (response) {
        // Just use DefaultResponse Model
        return VaccinationResponseModel(json.decode(response.body));
      },
      // Just put data:{} if there are no data need to be post
      data: requestModel.toJson(),
    );
  }
}
