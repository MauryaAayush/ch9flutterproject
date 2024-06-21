import 'package:ch9flutterproject/Day1/HTTP/Main_Screen.dart';
import 'package:http/http.dart%20';
import 'package:http/http.dart' as http;


class Apiservice {

  // singleton Object : When any class provide same service to entire project.
  // This is a process of creating singleton object;
  static final Apiservice apiservice = Apiservice._singleton();

  Apiservice._singleton();

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
