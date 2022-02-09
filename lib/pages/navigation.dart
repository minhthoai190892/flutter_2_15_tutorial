import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';

class Navigationn extends StatelessWidget {
  const Navigationn({Key? key}) : super(key: key);
  static const nameRoute = '/Navigationn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ProductPage(),
              ),);
            },
            child: const Text("Next page")),
      ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text("Product Page"),
      ),
      body: const Text("Product Pagae"),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
