import 'package:flutter/material.dart';
// ignore: camel_case_types
class floatingActionButton extends StatelessWidget {
  const floatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/home');
      },
      child: const Icon(Icons.arrow_back_ios),
    );
  }
}
// VisibleInvisibleWidget