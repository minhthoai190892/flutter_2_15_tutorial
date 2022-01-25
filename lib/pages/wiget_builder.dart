import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';

class WidgetBuilderr extends StatelessWidget {
  const WidgetBuilderr({Key? key}) : super(key: key);
  static const nameRoute = '/widgetbuilder';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Builder"),
      ),
      body: Container(),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
