import 'dart:convert';
import 'package:flutter/foundation.dart';

import 'helper/apiservice.dart';



class WallProvider extends ChangeNotifier{

  Map data = {};
  bool isLoading = false;
  Apiservice apiservice = Apiservice();

  Future<void> fetchData(String query)
  async {
    isLoading = true;
    notifyListeners();

    Apiservice apiservice = Apiservice();
    String? json = await apiservice.apiCalling(query);
    data = jsonDecode(json!);

    isLoading = false;
    notifyListeners();
  }


}