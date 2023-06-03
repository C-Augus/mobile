// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

//STATELESS = ONLY HAS AN INFORMATIVE CONTEXT, NO DATA PROVIDED BY THE USER (DOESN'T HAS A STATE)
//STATEFUL = THE USER WILL PROVIDE DATA (HAS A STATE)

//METHOD RESPONSIBLE FOR BUILDING AND PRESENTING THE APP'S VISUAL ELEMENTS (WIDGETS)
class Squares extends StatelessWidget {
  const Squares({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TITLE BAR
      appBar: AppBar(
        title: Text('Squares'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 6.0, left: 6.0, right: 6.0, bottom: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                    child: Center(
                      child: Text('A'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                    child: Center(
                      child: Text('B'),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(1.0),
                ),
                child: Center(
                  child: Text('C'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                    child: Center(
                      child: Text('D'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                    child: Center(
                      child: Text('E'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//EVERY SCREEN IN FLUTTER IS A CLASS
