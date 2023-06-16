import 'package:http/http.dart' as http;
import 'package:mhcs/helper/constant.dart';
import 'package:mhcs/services/resource.dart';

class Webservice {
  // API request using POST method with Bearer Token
  static Future post(Resource resource) async {
    Uri uri = Uri.parse(rootUrl + resource.url);

    http.Response response =
        await http.post(uri, body: resource.data, headers: {
      //For localization response from server
      'X-localization': 'en',
      //To only accept json response from server
      'Accept': 'application/json',
    });

    return resource.parse(response);
  }

  // API request using GET method with Bearer Token from resource model
  static Future get(Resource resource) async {
    Uri uri = Uri.parse(rootUrl + resource.url);
    http.Response response = await http.get(
      uri,
      headers: {
        //For localization response from server
        'X-localization': 'en',
        //To only accept json response from server
        'Accept': 'application/json',
      },
    );

    return resource.parse(response);
  }
}
