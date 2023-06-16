import 'package:mhcs/model_resources/manage_quarantine_resource.dart';
import 'package:mhcs/models/manage_quarantine/list_quarantine_response_model.dart';
import 'package:mhcs/services/web_services.dart';


class QuarantineBloc{
  // The ListQuarantineResponseModel is the return model when we call the API
  Future<ListQuarantineResponseModel> getListOfQuarantineRecord(
      // PatientId and QuarantineCenterID are the data required by this API
      int userId) async {
    // As this API use the GET method as there are no data need to be post,
    // so we call Webservice.get
    // In the Webservice.get function, we pass the Resource as the argument
    // along with the argument needed by the checkout method in the resource file
    return await Webservice.get(ManageQuarantineResource.listQuarantineRecord(userId));
  }
}