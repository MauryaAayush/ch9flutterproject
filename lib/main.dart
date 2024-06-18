import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Day1/HTTP/Main_Screen.dart';
import 'Day1/Wallpaper/Provider/WallPaper_Provider.dart';
import 'Day1/Wallpaper/wallPaper_Screen.dart';

void main() {
  ApiServices apiServices = ApiServices();
  runApp(

      MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => WallpaperProvider(),)
      ],
          child: const MyApp()
      )

      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: WallpaperScreen(),
    );
  }
}

