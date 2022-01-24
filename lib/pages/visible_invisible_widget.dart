import 'package:flutter/material.dart';

class VisibleInvisibleWidgetPage extends StatelessWidget {
  const VisibleInvisibleWidgetPage({Key? key}) : super(key: key);
  static const routeName = "/visibleinvisiblewidget";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Visible & Invisible Widget"),
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Container(
            height: 50,
            width: 50,
            color: Colors.amber,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.red,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.amber,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.red,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.amber,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.amber,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.red,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.amber,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.red,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.amber,
          ),Container(
            height: 50,
            width: 50,
            color: Colors.amber,
          ),
        ],
      ),
      // body: ListView(
      //   scrollDirection: Axis.vertical,
      //   children: [
      //     const Center(
      //       child: Text("Visible & Invisible Widget"),
      //     ),
      //     const SizedBox(
      //       height: 30,
      //     ),
      //     Container(
      //       alignment: Alignment.topLeft,
      //       height: 100,
      //       width: 140,
      //       color: Colors.amber,
      //       child: const Text("Container 1"),
      //     ),
      //     Container(
      //       alignment: Alignment.topLeft,
      //       height: 100,
      //       width: 130,
      //       color: Colors.red,
      //       child: const Text("Container 1"),
      //     ),
      //     Container(
      //       alignment: Alignment.topLeft,
      //       height: 100,
      //       width: 120,
      //       color: Colors.black,
      //       child: const Text("Container 1"),
      //     ),
      //     Container(
      //       alignment: Alignment.topLeft,
      //       height: 100,
      //       width: 110,
      //       color: Colors.blue,
      //       child: const Text("Container 1"),
      //     ),
      //     Container(
      //       alignment: Alignment.topLeft,
      //       height: 100,
      //       width: 100,
      //       color: Colors.pink,
      //       child: const Text("Container 1"),
      //     ),
      //     Container(
      //       alignment: Alignment.topLeft,
      //       height: 100,
      //       width: 140,
      //       color: Colors.amber,
      //       child: const Text("Container 1"),
      //     ),
      //     Container(
      //       alignment: Alignment.topLeft,
      //       height: 100,
      //       width: 130,
      //       color: Colors.red,
      //       child: const Text("Container 1"),
      //     ),
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Container(
      //           alignment: Alignment.topLeft,
      //           height: 100,
      //           width: 120,
      //           color: Colors.black,
      //           child: const Text("Container 1"),
      //         ),
      //         Container(
      //           alignment: Alignment.topLeft,
      //           height: 100,
      //           width: 110,
      //           color: Colors.blue,
      //           child: const Text("Container 1"),
      //         ),
      //         Container(
      //           alignment: Alignment.topLeft,
      //           height: 100,
      //           width: 100,
      //           color: Colors.pink,
      //           child: const Text("Container 1"),
      //         ),
      //         Container(
      //           alignment: Alignment.topLeft,
      //           height: 100,
      //           width: 140,
      //           color: Colors.amber,
      //           child: const Text("Container 1"),
      //         ),
      //         Container(
      //           alignment: Alignment.topLeft,
      //           height: 100,
      //           width: 130,
      //           color: Colors.red,
      //           child: const Text("Container 1"),
      //         ),
      //         Container(
      //           alignment: Alignment.topLeft,
      //           height: 100,
      //           width: 120,
      //           color: Colors.black,
      //           child: const Text("Container 1"),
      //         ),
      //         Container(
      //           alignment: Alignment.topLeft,
      //           height: 100,
      //           width: 110,
      //           color: Colors.blue,
      //           child: const Text("Container 1"),
      //         ),
      //         Container(
      //           alignment: Alignment.topLeft,
      //           height: 100,
      //           width: 100,
      //           color: Colors.pink,
      //           child: const Text("Container 1"),
      //         ),
      //       ],
      //     )
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/home');
        },
        child: const Icon(Icons.arrow_back_ios),
      ),
    );
  }
}
