// ignore_for_file: must_be_immutable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';
import 'package:http/http.dart' as http;

class HttpDelete extends StatefulWidget {
  const HttpDelete({Key? key}) : super(key: key);
  static const nameRoute = '/HttpDelete';

  @override
  State<HttpDelete> createState() => _HttpDeleteState();
}

class _HttpDeleteState extends State<HttpDelete> {
  String data = "Data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HttpDelete"),
        actions: [
          IconButton(
            onPressed: () async {
              var response = await http.get(
                Uri.parse("https://reqres.in/api/users/1"),
              );
              Map<String, dynamic> mybody = json.decode(response.body);
              setState(() {
                data =
                    "Name: ${mybody['data']['first_name']} ${mybody['data']['last_name']}";
                // ignore: avoid_print
                print(mybody['data']);
              });
            },
            icon: const Icon(Icons.download),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(data),
          const SizedBox(
            height: 35,
          ),
          ElevatedButton(
            onPressed: () async {
              var response =
                  await http.delete(Uri.parse("https://reqres.in/api/users/1"));
              if (response.statusCode == 204) {
                setState(() {
                  data = "asdfsdfsa";
                });
              }
              // ignore: avoid_print
              print(response.statusCode);
            },
            child: const Icon(
              Icons.delete,
            ),
          ),
        ],
      ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
