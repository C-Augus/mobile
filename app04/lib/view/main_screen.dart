// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:app04/model/pais.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainScreen> {
  //DYNAMIC COUNTRIES CLASS OBJECTS LIST
  List<Country> list = [];

  //LOAD DATA FROM JSON
  loadData() async {
    final String a = await rootBundle.loadString('lib/data/paises.json');
    final dynamic d = await json.decode(a);
    setState(() {
      d.forEach((item) {
        list.add(Country.fromJson(item));
      });
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        await loadData();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
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
          //
          //LISTVIEW
          //
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                    leading: Icon(Icons.public, size: 20),
                    title: Text(list[index].name),
                    subtitle: Text('Capital: ${list[index].capital}'),
                    trailing: Icon(Icons.arrow_right, size: 20),
                    //CLICK EVENT
                    onTap: () {
                      Navigator.pushNamed(context, 'ds',
                          arguments: list[index]);
                    }),
              );
            },
          ),
        ));
  }
}
