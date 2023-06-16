// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:mhcs/models/manage_quarantine/list_quarantine_response_model.dart';
import 'package:mhcs/services/resource.dart';

class ManageQuarantineResource {
 // Define the data need to be past to the api using the parameter,
  //and in this case, we only need to pass the userId to the API
  static Resource listQuarantineRecord(int userId) {
    return Resource(
      // Url is the API url
      url: 'list-quarantine/$userId',
      parse: (response) {
        // Use List Movement Histories Model
        return ListQuarantineResponseModel(json.decode(response.body));
      },
      // Just put data:{} as there are no form data need to be pass
      data: {},
    );
  }
}
