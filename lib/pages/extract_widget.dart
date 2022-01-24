import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';

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

class KotakWarna extends StatelessWidget {
  const KotakWarna({
    Key? key,
    required this.text,
    required this.colorKotakWarna,
  }) : super(key: key);
  final String text;
  final Color colorKotakWarna;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: colorKotakWarna,
      child: Center(
          child: Text(
        text,
        style: const TextStyle(fontSize: 40),
      )),
    );
  }
}
