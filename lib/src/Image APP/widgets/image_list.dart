import 'package:budgetly/src/Image%20APP/models/image_model.dart';
import 'package:flutter/material.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  const ImageList({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Image.network(image.url),
          ),
          Text(image.title),
        ],
      ),
    );
  }
}