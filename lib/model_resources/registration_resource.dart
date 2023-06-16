import 'dart:convert';

import 'package:mhcs/models/default_response_model.dart';
import 'package:mhcs/models/registration/registration_request_model.dart';
import 'package:mhcs/models/registration/registration_response_model.dart';
import 'package:mhcs/services/resource.dart';

class RegistrationResource {
  // Define the data need to be past to the api using the parameter
  static Resource register(RegistrationRequestModel requestModel) {
    return Resource(
      // Url is the API url
      url: 'register',
      parse: (response) {
        // Just use DefaultResponse Model
        return RegistrationResponseModel(json.decode(response.body));
      },
      // Just put data:{} if there are no data need to be post
      data: requestModel.toJson(),
    );
  }
}
