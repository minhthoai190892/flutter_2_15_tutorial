import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';
import 'package:flutter_2_15/widgets/kotak_warna.dart';

class ExtractWidget extends StatelessWidget {
  const ExtractWidget({Key? key}) : super(key: key);
  static const nameRoute = '/extractwidget';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Extract Widget"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: const [
            KotakWarna(text: "text", colorKotakWarna: Colors.blue),
            KotakWarna(text: "text 1", colorKotakWarna: Colors.black), //họp màu
          ],
        ),
      ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
