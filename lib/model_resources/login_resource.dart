import 'dart:convert';
import 'package:mhcs/models/default_response_model.dart';
import 'package:mhcs/models/login/login_response_model.dart';
import 'package:mhcs/services/resource.dart';

class LoginResource {
  // Define the data need to be past to the api using the parameter
  static Resource login(String email, String password) {
    return Resource(
        // Url is the API url
        url: 'login',
        parse: (response) {
          // Just use DefaultResponse Model
          return LoginResponseModel(json.decode(response.body));
        },
        // Just put data:{} if there are no data need to be post
        data: {
          'email': email,
          'password': password,
        });
  }
}
