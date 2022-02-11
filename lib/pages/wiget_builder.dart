import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';
import 'package:flutter_2_15/widgets/kotak_warna.dart';

// ignore: must_be_immutable
class WidgetBuilderr extends StatelessWidget {
  const WidgetBuilderr({Key? key}) : super(key: key);
  static const nameRoute = '/widgetbuilder';
  // List<Map<String, dynamic>> databuilder = List.generate(
  //   10,
  //   (index) => {
  //     "text": "Text - ${index + 1}",
  //     "color": Color.fromARGB(
  //       255,
  //       Random().nextInt(256),
  //       Random().nextInt(256),
  //       Random().nextInt(256),
  //     ),
  //   },
  // );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Builder"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          // childAspectRatio: 2,
          crossAxisSpacing: 3, mainAxisSpacing: 3,
        ),
        itemBuilder: (context, index) => KotakWarna(
          text: "Text - ${index + 1}",
          colorKotakWarna: Color.fromARGB(
            255,
            Random().nextInt(256),
            Random().nextInt(256),
            Random().nextInt(256),
          ),
        ),
      ),

      // body: ListView.builder(
      //   itemCount: 5,
      //   itemBuilder: (BuildContext context, int index) => KotakWarna(
      //     text: "Text - ${index + 1}",
      //     colorKotakWarna: Color.fromARGB(
      //       255,
      //       Random().nextInt(256),
      //       Random().nextInt(256),
      //       Random().nextInt(256),
      //     ),
      //   ),
      // ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
