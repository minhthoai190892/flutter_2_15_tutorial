import 'package:flutter/material.dart';

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
