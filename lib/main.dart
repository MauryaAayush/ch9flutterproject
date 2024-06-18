import 'package:flutter/material.dart';

import 'Day1/HTTP/Main_Screen.dart';

void main() {
  ApiServices apiServices = ApiServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HttPScreen(),
    );
  }
}

