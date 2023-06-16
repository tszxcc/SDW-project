import 'package:mhcs/model_resources/covid_information_resource.dart';
import 'package:mhcs/models/default_response_model.dart';
import 'package:mhcs/models/manage_covid_information/covid_information_list_response_model.dart';
import 'package:mhcs/models/manage_covid_information/covid_information_model.dart';
import 'package:mhcs/models/manage_covid_information/covid_information_response_model.dart';
import 'package:mhcs/services/web_services.dart';

class CovidInformationBloc {
  Future<ListCovidInformationReponseModel> getListOfCovidInformation() async {
    // As this API use the GET method as there are no data need to be post,
    // so we call Webservice.get
    // In the Webservice.get function, we pass the Resource as the argument
    // along with the argument needed by the checkout method in the resource file
    return await Webservice.get(CovidInformatonResource.listCovidInformation());
  }

  Future<CovidInformationModel> getCovidInformation(
      // UserId is the data required by this API
      int id) async {
    // As this API use the GET method as there are no data need to be post,
    // so we call Webservice.get
    // In the Webservice.get function, we pass the Resource as the argument
    // along with the argument needed by the checkout method in the resource file
    return await Webservice.get(
        CovidInformatonResource.showCovidInformation(id));
  }

  Future<DefaultResponseModel> addinCovidInformation(
      // requestModel is the data required by this API
      String topic,
      String description) async {
    // As this API use the POST method as there are data need to be post, so we call Webservice.post
    // In the Webservice.post function, we pass the Resource as the argument
    // along with the argument needed by the checkin method in the resource file
    return await Webservice.post(
        CovidInformatonResource.addCovidInformation(topic, description));
  }

  Future<CovidInformationResponseModel> deletingCovidInformation(
      // requestModel is the data required by this API
      int id) async {
    // As this API use the POST method as there are data need to be post, so we call Webservice.post
    // In the Webservice.post function, we pass the Resource as the argument
    // along with the argument needed by the checkin method in the resource file
    return await Webservice.post(
        CovidInformatonResource.deleteCovidInformation(id));
  }

  Future<CovidInformationResponseModel> updatingCovidInformation(
      // requestModel is the data required by this API
      int id,
      String topic,
      String description) async {
    // As this API use the POST method as there are data need to be post, so we call Webservice.post
    // In the Webservice.post function, we pass the Resource as the argument
    // along with the argument needed by the checkin method in the resource file
    return await Webservice.post(
        CovidInformatonResource.updateCovidInformation(topic, description, id));
  }
}
