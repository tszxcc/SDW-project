import 'dart:convert';

import 'package:mhcs/models/default_response_model.dart';
import 'package:mhcs/models/manage_covid_information/covid_information_list_response_model.dart';
import 'package:mhcs/services/resource.dart';

class CovidInformatonResource {
  static Resource listCovidInformation() {
    return Resource(
      // Url is the API url
      url: 'list-covidInformation',
      parse: (response) {
        // Use List Notification Histories Model
        return ListCovidInformationReponseModel(json.decode(response.body));
      },
      // Just put data:{} as there are no form data need to be pass
      data: {},
    );
  }

  static Resource addCovidInformation(String topic, String description) {
    return Resource(
      // Url is the API url
      url: 'add-covidInformation',
      parse: (response) {
        // Use MovementResponseModel Model
        return DefaultResponseModel(json.decode(response.body));
      },
      // Just put data:{} if there are no data need to be post, else write the data in a json format as below
      data: {
        'topic': topic.toString(),
        'description': description.toString(),
      },
    );
  }

  static Resource deleteCovidInformation(int id) {
    return Resource(
      // Url is the API url
      url: 'delete-covidInformation/$id',
      parse: (response) {
        // Use MovementResponseModel Model
        return ListCovidInformationReponseModel(json.decode(response.body));
      },
      // Just put data:{} if there are no data need to be post, else write the data in a json format as below
      data: {},
    );
  }

  static Resource updateCovidInformation(
      String topic, String description, int id) {
    return Resource(
      // Url is the API url
      url: 'update-covidInformation',
      parse: (response) {
        // Use MovementResponseModel Model
        return ListCovidInformationReponseModel(json.decode(response.body));
      },
      // Just put data:{} if there are no data need to be post, else write the data in a json format as below
      data: {
        'title': topic.toString(),
        'message': description.toString(),
        'id': id.toInt(),
      },
    );
  }

  static Resource showCovidInformation(int id) {
    return Resource(
      // Url is the API url
      url: 'covidInformation/$id',
      parse: (response) {
        // Use List Movement Histories Model
        return ListCovidInformationReponseModel(json.decode(response.body));
      },
      // Just put data:{} as there are no form data need to be pass
      data: {},
    );
  }
}
