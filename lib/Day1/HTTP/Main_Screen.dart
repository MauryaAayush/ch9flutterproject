import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart%20';

class HttPScreen extends StatelessWidget {
  const HttPScreen({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('API calling'),
      ),

      body:

      Center(
        child: ListView.builder(
          itemCount: ApiServices.l1.length,
          itemBuilder: (context, index) => ListTile(
            titleTextStyle: TextStyle(color: Colors.black),
          title: Text(ApiServices.l1[index]['body']),
            leading: Text(ApiServices.l1[index]['id'].toString()),
            subtitle:  Text(ApiServices.l1[index]['name']),

        ),),
      )
    );
  }
}


class ApiServices{
  String apiUrl = "https://jsonplaceholder.typicode.com/comments";

  static List l1 = [];

  Future<void>  apiCall()
  async {
    Uri url = Uri.parse(apiUrl);
    Response response = await http.get(url);

    if(response.statusCode == 200)
      {
        print('api call successfully');
      }else{
      print("error");
    }

     List l2 = jsonDecode(response.body);
       l1 = l2;
    print(l1[0]);
  }


  ApiServices()
  {
    apiCall();
  }


}