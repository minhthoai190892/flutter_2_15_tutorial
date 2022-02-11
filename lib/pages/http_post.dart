import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';
import 'package:http/http.dart' as http;

class HttpPost extends StatefulWidget {
  const HttpPost({Key? key}) : super(key: key);
  static const nameRoute = "/HttpPost";

  @override
  State<HttpPost> createState() => _HttpPostState();
}

class _HttpPostState extends State<HttpPost> {
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();
  String result = "data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HttpPost"),
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
              labelText: "Name",
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
              labelText: "Job",
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
              var myresponse = await http.post(
                Uri.parse("https://reqres.in/api/users"),
                body: {
                  "name": nameC.text,
                  "job": jobC.text,
                },
              );
              Map<String, dynamic> data =
                  json.decode(myresponse.body) as Map<String, dynamic>;
              setState(() {
                result = "${data['name']} - ${data['job']}";
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
