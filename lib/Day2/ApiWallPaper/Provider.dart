import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../Day1/Wallpaper/ApiWallPaper/helper/apiservice.dart';


class WallProvider extends ChangeNotifier{

  Map data = {};
  bool isLoading = false;

  Future<void> fetchData()
  async {
    isLoading = true;
    notifyListeners();

    Apiservice apiservice = Apiservice();
    String? json = await apiservice.apiCalling();
    data = jsonDecode(json!);

    isLoading = false;
    notifyListeners();
  }

  WallProvider()
  {
    fetchData();
  }

}