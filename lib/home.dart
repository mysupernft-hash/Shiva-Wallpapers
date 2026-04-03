import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List wallpapers = [
    "https://images.unsplash.com/photo-1",
    "https://images.unsplash.com/photo-2",
    "https://images.unsplash.com/photo-3"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mahadev Wallpapers")),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: wallpapers.length,
        itemBuilder: (context, index) {
          return Image.network(
            wallpapers[index],
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
