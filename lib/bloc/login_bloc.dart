import 'package:mhcs/model_resources/login_resource.dart';

import 'package:mhcs/models/default_response_model.dart';

import 'package:mhcs/models/login/login_response_model.dart';

import 'package:mhcs/services/web_services.dart';

class LoginBloc {
  Future<LoginResponseModel> login(
      // email and password is the data required by this API
      String email,
      String password) async {
    // As this API use the POST method as there are data need to be post, so we call Webservice.post
    // In the Webservice.post function, we pass the Resource as the argument
    // along with the argument needed by the checkin method in the resource file
    return await Webservice.post(LoginResource.login(email, password));
  }
}
