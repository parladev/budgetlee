import 'package:flutter/material.dart';

import 'listItems.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Shopping App',
    home: ShoppingList(
      products: [
        Product(name: 'Yumurta'),
        Product(name: 'Un'),
        Product(name: 'Semishka yaghi'),
      ],
    ),
  ));
}