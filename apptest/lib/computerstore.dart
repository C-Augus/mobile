// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ComputerStore extends StatelessWidget {
  const ComputerStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Computer Store', style: TextStyle(color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.yellow[400],
        ),
        body: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.computer,
                    color: Colors.grey[600],
                    size: 100.0,
                  ),
                  Text(
                      'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. '),
                  Padding(
                      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(children: [
                              Icon(
                                Icons.mouse_outlined,
                                color: Colors.grey[600],
                                size: 50.0,
                              ),
                              Text('Mouse'),
                            ]),
                            Column(children: [
                              Icon(
                                Icons.monitor,
                                color: Colors.grey[600],
                                size: 50.0,
                              ),
                              Text('Monitor'),
                            ]),
                            Column(children: [
                              Icon(
                                Icons.print_outlined,
                                color: Colors.grey[600],
                                size: 50.0,
                              ),
                              Text('Printer'),
                            ]),
                            Column(children: [
                              Icon(
                                Icons.tablet_mac,
                                color: Colors.grey[600],
                                size: 50.0,
                              ),
                              Text('Tablet'),
                            ])
                          ])),
                  Text(
                      'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. '),
                ])));
  }
}
