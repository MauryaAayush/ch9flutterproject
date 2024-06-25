import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Provider.dart';



// Provider -> Logic
// Api -> helper class-> Api servoce

class ApiWallpaper extends StatelessWidget {
  const ApiWallpaper({super.key});

  @override
  Widget build(BuildContext context) {
    WallProvider wallProviderTrue = Provider.of<WallProvider>(context);
    WallProvider wallProviderFalse =
        Provider.of<WallProvider>(context, listen: false);

    TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallpaper'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                labelText: 'demo test',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    wallProviderFalse.fetchData(searchController.text);
                  },
                ),
              ),
              onSubmitted: (value) {
                wallProviderFalse.fetchData(value);
              },
            ),
          ),
          Expanded(
            child: (wallProviderTrue.isLoading)
                ? Center(
              child: CircularProgressIndicator(),
            )
                : GridView.builder(
              itemCount: wallProviderTrue.data['hits']?.length ?? 0,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) => Card(
                child: Image.network(
                    wallProviderTrue.data['hits'][index]['largeImageURL']),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
