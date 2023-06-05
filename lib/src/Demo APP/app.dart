import 'package:budgetly/src/Demo%20APP/titleSection.dart';
import 'package:flutter/material.dart';
import 'buttonSection.dart';
import 'metadataSection.dart';


class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flatter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo title'),
        ),
        body: Column(
          children: [
            Image.network(
                'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'
            ),
            titleSection,
            const ButtonSection(),
            metadataSection
          ],
        ),
      ),
    );
  }
}