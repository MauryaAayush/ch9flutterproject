import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Day1/Wallpaper/ApiWallPaper/Provider.dart';

// Provider -> Logic
// Api -> helper class-> Api servoce

class ApiWallpaper extends StatelessWidget {
  const ApiWallpaper({super.key});

  @override
  Widget build(BuildContext context) {
    WallProvider wallProviderTrue = Provider.of<WallProvider>(context);
    WallProvider wallProviderFalse =
        Provider.of<WallProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('wallpaper'),
      ),

      // body:
      body: (wallProviderTrue.isLoading)
          ? Center(
              child: CircularProgressIndicator(),
            )
          : GridView.builder(
              itemCount: 10,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) => Card(
                    child: Image.network(
                        wallProviderTrue.data['hits'][index]['largeImageURL']),
                  )),
    );
  }
}
