import 'package:budgetly/src/Image%20APP/models/image_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import 'widgets/image_list.dart';

class ImageApp extends StatefulWidget {
  const ImageApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return ImageAppState();
  }
}

class ImageAppState extends State<ImageApp> {
  int counter = 1;
  List<ImageModel> images = [];

  void fetchImage() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter');
    final result = await get(url);
    final imageModel = ImageModel.fromJson(json.decode(result.body));
    setState(() {
      images.add(imageModel);
      counter += 1;
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Let see some images!'),
        ),
        body: ImageList(images: images),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}