// ignore_for_file: prefer_const_constructors

import 'package:app02/view/car_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebCars'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 253, 85, 85),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarWidget('Audi', 'Q8', 'audi_q8.jpg'),
            CarWidget('Audi', 'R8', 'audi_r8.jpg'),
            CarWidget('BMW', 'M2', 'bmw_m2.jpg'),
            CarWidget('Ferrari', '488', 'ferrari_488.jpg'),
            CarWidget('Lamborghini', 'Huracan', 'lamborghini_huracan.jpg'),
            CarWidget('Lamborghini', 'Urus', 'lamborghini_urus.jpg'),
            CarWidget('Maserati', 'GTS', 'maserati_gts.jpg'),
          ],
        ),
      ),
    );
  }
}
