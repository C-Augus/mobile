// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CarWidget extends StatelessWidget {
  //CLASS ATRIBUTES
  final String brand;
  final String model;
  final String photo;
  //CONSTRUCTOR
  const CarWidget(this.brand, this.model, this.photo, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //MARGINS
      margin: EdgeInsets.all(20),

      width: MediaQuery.of(context).size.width,
      height: 300,

      decoration: BoxDecoration(
        // color: Color.fromARGB(115, 197, 73, 73),
        border: Border.all(
          width: 5,
          color: Color.fromARGB(255, 247, 113, 113),
        ),
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(255, 245, 155, 155),
              Color.fromARGB(255, 233, 82, 82),
            ]),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Text(
            brand,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
          Text(model,
              style: TextStyle(
                color: Colors.white,
              )),
          Image.asset('lib/images/$photo', height: 200, fit: BoxFit.fill),
        ],
      ),
    );
  }
}
