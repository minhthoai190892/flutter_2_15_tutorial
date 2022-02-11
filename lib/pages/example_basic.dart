import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';

class ExampleBasic extends StatelessWidget {
  const ExampleBasic({Key? key}) : super(key: key);
  static const nameRoute = '/example';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("ExampleBasic Flutter "),
        leading: const FlutterLogo(
          size: 20,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.bottomLeft,
            // width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://picsum.photos/id/${index + 1}/200/300"),
              ),
            ),

            child: const Text(
              "data",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),

      // body: ListView.builder(
      //   padding: const EdgeInsets.all(20),
      //   itemCount: 10,
      //   itemBuilder: (context, index) {
      //     if (index % 2 == 0) {
      //       return Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Container(
      //               // width: 150,
      //               height: 150,
      //               color: Colors.blue,
      //               child:  Center(
      //                 child: Text("data"),
      //               ),
      //             ),
      //             const SizedBox(
      //               height: 10,
      //             ),
      //              Text("data - ${ index +1 }"),
      //           ],
      //         ),
      //       );
      //     } else {
      //       return Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Container(
      //               height: 150,
      //               color: Colors.amber,
      //               child: const Center(
      //                 child: Text("data"),
      //               ),
      //             ),const SizedBox(
      //               height: 10,
      //             ),
      //              Text("data - ${ index +1 }"),
      //           ],
      //         ),
      //       );
      //     }
      //   },
      // ),
      // body: GridView.builder(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     crossAxisSpacing: 20,
      //     mainAxisSpacing: 20,
      //   ),
      //   itemBuilder: (context, index) {
      //     if (index %2 ==0) {
      //       return Container(
      //       width: 150,
      //       height: 15,
      //       color: Colors.blue,
      //       child: const Center(
      //         child: Text("data"),
      //       ),
      //     );
      //     } else {
      //       return Container(
      //       width: 150,
      //       height: 15,
      //       color: Colors.amber,
      //       child: const Center(
      //         child: Text("data"),
      //       ),
      //     );
      //     }

      //   },
      // ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Container(
      //           alignment: Alignment.center,
      //           height: 100,
      //           color: Colors.blue,
      //           width: 100,
      //           child: const Text(
      //             "Hello 2",
      //           ),
      //         ),
      //         const SizedBox(
      //           width: 10,
      //         ),
      //         Container(
      //           alignment: Alignment.center,
      //           height: 100,
      //           decoration: BoxDecoration(
      //             color: Colors.blue,
      //             borderRadius: BorderRadius.circular(100 / 2),
      //           ),
      //           width: 100,
      //           child: const Text(
      //             "Hello 2",
      //           ),
      //         ),
      //         // const SizedBox(
      //         //   height: 100,
      //         //   width: 100,
      //         //   child: Text("Hello 1"),
      //         // ),
      //         // const SizedBox(
      //         //   height: 100,
      //         //   width: 100,
      //         //   child: Text(
      //         //     "Hello 2",
      //         //     style: TextStyle(
      //         //       fontSize: 20,
      //         //       fontWeight: FontWeight.bold,
      //         //       fontStyle: FontStyle.italic,
      //         //       decoration: TextDecoration.underline,
      //         //     ),
      //         //   ),
      //         // ),

      //         // ClipOval(
      //         //   child: Container(
      //         //     alignment: Alignment.center,
      //         //     height: 100,
      //         //     color: Colors.blue,
      //         //     width: 100,
      //         //     child: const Text(
      //         //       "Hello 2",
      //         //     ),
      //         //   ),
      //         // ),
      //       ],
      //     ),
      //     FlutterLogo(size: 200,),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Container(
      //           alignment: Alignment.center,
      //           height: 100,
      //           color: Colors.blue,
      //           width: 100,
      //           child: const Text(
      //             "Hello 2",
      //           ),
      //         ),
      //         const SizedBox(
      //           width: 10,
      //         ),
      //         Container(
      //           alignment: Alignment.center,
      //           height: 100,
      //           decoration: BoxDecoration(
      //             color: Colors.blue,
      //             borderRadius: BorderRadius.circular(100 / 2),
      //           ),
      //           width: 100,
      //           child: const Text(
      //             "Hello 2",
      //           ),
      //         ),
      //       ],
      //     )
      //     // const SizedBox(
      //     //   height: 50,
      //     // ),
      //     // Row(
      //     //   children: [
      //     //     Transform.rotate(
      //     //       // angle: 180,
      //     //       angle: pi / 2,
      //     //       child: const FlutterLogo(
      //     //         size: 200,
      //     //       ),
      //     //     ),
      //     //   ],
      //     // )
      //   ],
      // ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
