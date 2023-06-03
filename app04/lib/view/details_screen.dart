// ignore_for_file: prefer_const_constructors

import 'package:app04/model/pais.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    //GET BACK THE COUNTRY USED AS PARAMETER
    var p = ModalRoute.of(context)!.settings.arguments as Country;

    return Scaffold(
        appBar: NewGradientAppBar(
          // ignore: prefer_const_literals_to_create_immutables
          gradient: LinearGradient(colors: [
            Color(0xFF004282),
            Color(0xFF7691C1),
            Color(0xFFA3BAD1)
          ]),
          title: Text('IBGE'),
          centerTitle: true,
        ),
        backgroundColor: Color.fromARGB(234, 252, 252, 252),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: ListView(
            children: [
              Image.network(
                'https://countryflagsapi.com/png/${p.abbreviation.toLowerCase()}',
              ),
              Text(p.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text(p.historic)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF004282),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              duration: Duration(seconds: 3),
              content: Text('${p.name} added to favorite.'),
            ));
            Navigator.pop(context);
          },
          child: Icon(Icons.favorite),
        ));
  }
}
