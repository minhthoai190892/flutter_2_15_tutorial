import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class FutureBuilderr extends StatelessWidget {
  FutureBuilderr({Key? key}) : super(key: key);
  static const nameRoute = '/FutureBuilderr';
  List<Map<String, dynamic>> allUser = [];
  Future getAllUser() async {
    // await Future.delayed(Duration(seconds: 3));
    try {
      var response = await http.get(Uri.parse("https://reqres.in/api/users/"));
      List data = (json.decode(response.body) as Map<String, dynamic>)['data'];
      // ignore: avoid_function_literals_in_foreach_calls
      data.forEach((element) {
        allUser.add(element);
      });
      // ignore: avoid_print
      print(response.body);
      // ignore: avoid_print
      print("----------------------");
      // ignore: avoid_print
      print(allUser);
    } catch (e) {
      // ignore: avoid_print
      print("Error!");
      // ignore: avoid_print
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FutureBuilderr"),
      ),
      body: FutureBuilder(
          future: getAllUser(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: Text("Loading...."),
              );
            } else {
              return ListView.builder(
                itemCount: allUser.length,
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage("${allUser[index]['avatar']}"),
                  ),
                  title: Text(
                      "${allUser[index]['first_name']} ${allUser[index]['last_name']}"),
                  subtitle: Text("${allUser[index]['email']}"),
                ),
              );
            }
          }),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () async {
      //       //get data
      //       var response =
      //           await http.get(Uri.parse("https://reqres.in/api/users/"));
      //       // ignore: avoid_print
      //       List data =
      //           (json.decode(response.body) as Map<String, dynamic>)['data'];
      //       // print(data);
      //       data.forEach((element) {
      //         Map<String, dynamic> user = element;
      //         print(user['email']);
      //       });
      //     },
      //     child: const Icon(Icons.download),
      //   ),
      // ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
