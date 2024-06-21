import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Day1/HTTP/Main_Screen.dart';
import 'Day1/Wallpaper/Provider/WallPaper_Provider.dart';
import 'Day1/Wallpaper/wallPaper_Screen.dart';
import 'Day2/ApiWallPaper/Provider.dart';


void main() {
  ApiServices apiServices = ApiServices();
  runApp(

      MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => WallpaperProvider(),),
        ChangeNotifierProvider(create: (context) => WallProvider(),),

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

//Screen -> Home/ MVP x
//Screen -> Home/ MVC
//Logic : provider

//Helper Class : OOPs, Each Class Should have different Responsibility.
//SingleTon Class object : we no need to declare object.

//C++ : const/final : is keyword used to fix value.
// static : a variable is common for all declared class's objects.

//Home Page :
//Detail Page: 