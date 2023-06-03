import 'package:app04/view/details_screen.dart';
import 'package:app04/view/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'IBGE',
    initialRoute: 'ms',
    routes: {
      'ms': (context) => MainScreen(),
      'ds': (context) => DetailsScreen(),
    },
  ));
}
