import 'package:flutter/material.dart';

class ImagesAndAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              Container(
                child: Image(
                  image: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/5/5b/Ultraviolet_image_of_the_Cygnus_Loop_Nebula_crop.jpg"),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: Image(
                  image: AssetImage("assets/NgrxDiagram.PNG"),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('Images and Assets')));
  }
}
