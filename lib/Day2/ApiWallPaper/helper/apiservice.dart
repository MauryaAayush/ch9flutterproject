import 'package:http/http.dart%20';
import 'package:http/http.dart' as http;


class Apiservice {

  Future<String?> apiCalling(String query)
  async {

    String api = 'https://pixabay.com/api/?key=44441504-05ad487b7df4fd83452807a77&q=$query&image_type=photo';
    Uri url = Uri.parse(api);
    Response response = await http.get(url);

    if(response.statusCode == 200)
      {
        print('api calling--------------------------------------------------------');
        return response.body;
      }
    return null;


  }

}
