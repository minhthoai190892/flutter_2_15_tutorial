import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';
import 'package:flutter_2_15/widgets/kotak_warna.dart';

// ignore: must_be_immutable
class MappingCollection extends StatelessWidget {
  // const MappingCollection({Key? key,this.allIteams}) : super(key: key);
  static const nameRoute = "/mapping_collection";
  List<KotakWarna> allIteams = List.generate(
    10,
    (index) => KotakWarna(
      text: "${index + 1}",
      colorKotakWarna: Color.fromARGB(255, Random().nextInt(256),
          Random().nextInt(256), Random().nextInt(256)),
    ),
  );
  List<Map<String, dynamic>> dataKotakWarna = List.generate(
      10,
      (index) => {
            "text": "index - ${index + 1}",
            "color": Color.fromARGB(255, Random().nextInt(256),
                Random().nextInt(256), Random().nextInt(256)),
          });
  MappingCollection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mapping Collection"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: dataKotakWarna
              .map(
                (e) => KotakWarna(
                  text: e['text'],
                  colorKotakWarna: e['color'],
                ),
              )
              .toList(),
        ),
      ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
