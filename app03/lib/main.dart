// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
// {}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI',
      home: MainScreen(),
    ),
  );
}

//
// MAINSCREEN
// Stateful = stf
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //ATRIBUTES
  var weiTxt = TextEditingController();
  var heiTxt = TextEditingController();
  //UNIQUE KEY TO FORM VALIDATING
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TITLE BAR
      appBar: NewGradientAppBar(
        gradient:
            LinearGradient(colors: [Colors.blue, Colors.purple, Colors.red]),
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade200,
      //BODY
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calculate_rounded,
                    size: 120,
                    color: Colors.blue.shade700,
                  ),
                  textField('Weight', weiTxt),
                  textField('Height', heiTxt),
                  button('Calculate')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //
  //TEXT FIELD
  //
  textField(label, variable) {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 15, left: 5, right: 5),
      child: TextFormField(
          keyboardType: TextInputType.number,
          style: TextStyle(
            fontSize: 15,
          ),
          controller: variable,
          decoration: InputDecoration(
              labelText: label,
              labelStyle: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
          //
          //VALIDATOR
          //
          validator: (value) {
            //CHANGING DOT TO COMA => 1,23 => 1.23
            value = value!.replaceFirst(',', '.');
            if (double.tryParse(value) == null) {
              //NO NUMERICAL VALUE PROVIDED BY THE USER
              return 'Enter a numerical value';
            } else {
              return null;
            }
          }),
    );
  }

  //
  // BUTTON
  //
  button(label) {
    return Container(
      child: TextButton(
        style: TextButton.styleFrom(
            minimumSize: Size(175, 50), primary: Colors.blue.shade700),
        child: Text(
          label,
          style: TextStyle(fontSize: 25),
        ),
        onPressed: () {
          if (formKey.currentState!.validate()) {
            double weight = double.parse(weiTxt.text.replaceFirst(',', '.'));
            double height = double.parse(heiTxt.text.replaceFirst(',', '.'));
            double bmi = weight / pow(height, 2);
            dialogBox("The BMI value is ${bmi.toStringAsFixed(2)}");
          } else {}
        },
      ),
    );
  }

  //
  //DIALOG BOX
  //
  dialogBox(msg) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Calculator'),
          content: Text(
            msg,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  weiTxt.clear();
                  heiTxt.clear();
                });
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
