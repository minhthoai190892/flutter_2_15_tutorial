import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';
import 'package:http/http.dart' as http;

class HttpPutPatch extends StatefulWidget {
  const HttpPutPatch({Key? key}) : super(key: key);
  static const nameRoute = "/HttpPutPatch";

  @override
  State<HttpPutPatch> createState() => _HttpPutPatchState();
}

class _HttpPutPatchState extends State<HttpPutPatch> {
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();
  String result = "data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HttpPutPatch"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: nameC,
            // autofocus: true,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: jobC,
            keyboardType: TextInputType.text,
            // obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Frist Name",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // const TextField(
          //   autofocus: true,
          //   keyboardType: TextInputType.text,
          //   decoration: InputDecoration(
          //     border: OutlineInputBorder(),
          //     labelText: "Phone",
          //   ),
          // ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () async {
              var myresponse = await http.put(
                Uri.parse("https://reqres.in/api/users/2"),
                body: {
                  "email": nameC.text,
                  "first_name": jobC.text,
                },
              );
              Map<String, dynamic> data =
                  json.decode(myresponse.body) as Map<String, dynamic>;
              setState(() {
                result = "${data['email']} - ${data['first_name']}";
              });
              // ignore: avoid_print
              print(myresponse.body);
            },
            child: const Text("Post Data"),
          ),
          const Divider(
            color: Colors.black,
          ),
          const SizedBox(height: 10),
          // ignore: prefer_const_constructors
          Text(result,style: TextStyle(fontSize: 50),),
        ],
      ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
