import 'package:flutter/material.dart';
import 'package:budgetly/Demo%20APP/buttonSection.dart';
import 'package:budgetly/Demo%20APP/metadataSection.dart';
import 'package:budgetly/Demo%20APP/titleSection.dart';


class App extends StatelessWidget {
  const App({super.key});

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