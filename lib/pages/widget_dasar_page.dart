import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';

class WidgetDasarPage extends StatelessWidget {
  const WidgetDasarPage({Key? key}) : super(key: key);
  static const nameRote = '/widgetdasarpage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WidgetDasarPage"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              icon: const Icon(Icons.arrow_back))
        ],
      ),
      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(
                size: 200,
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  // ignore: avoid_print
                  print("object");
                },
                child: const Text("data"),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.home_max_rounded),
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.asset("assets/images/image3.jpg"),
                  )
                  
                ],
              )
            ],
          )),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
