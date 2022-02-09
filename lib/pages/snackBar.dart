// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';

class SnackBarr extends StatelessWidget {
  const SnackBarr({Key? key}) : super(key: key);
  static const nameRoute = '/snackbar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snack Bar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text("data"),
                action: SnackBarAction(
                  label: "Cancel",
                  onPressed: () {
                    // ignore: avoid_print
                    print("object");
                  },
                ),
                duration: const Duration(seconds: 1),
              ),
            );
          },
          child: const Icon(Icons.access_time_filled_outlined),
        ),
      ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
