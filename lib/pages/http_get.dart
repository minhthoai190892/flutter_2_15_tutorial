import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';
import 'package:http/http.dart' as http;

class HttpGett extends StatefulWidget {
  const HttpGett({Key? key}) : super(key: key);
  static const nameRoute = '/HttpGett';

  @override
  State<HttpGett> createState() => _HttpGettState();
}

class _HttpGettState extends State<HttpGett> {
  late String body;
  late String id;
  late String fistName;
  late String lastName;
  late String email;
  late String name;

  @override
  void initState() {
    body = "data";
    id = "";
    fistName = "";
    lastName = "";
    email = "";
    name = "";
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Http Get"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              body,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text("Information"),
            const SizedBox(
              height: 20,
            ),
            Text(
              "ID: $id",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "First Name: $fistName",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Last Name: $lastName",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Email: $email",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Name: $name",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                var getdata =
                    await http.get(Uri.parse("https://reqres.in/api/users/3"));
                // ignore: avoid_print
                if (getdata.statusCode == 200) {
                  Map<String, dynamic> data =
                      json.decode(getdata.body) as Map<String, dynamic>;
                  setState(() {
                    body = data["data"]["email"].toString();
                    id = data["data"]["id"].toString();
                    fistName = data["data"]["first_name"].toString();
                    lastName = data["data"]["last_name"].toString();
                    email = data["data"]["email"].toString();
                    name =
                        "${data["data"]["first_name"].toString()} ${data["data"]["last_name"].toString()}";
                  });

                  // ignore: avoid_print
                  print(getdata.statusCode);
                  // ignore: avoid_print
                  print("---------------");
                  // print(getdata.headers);
                  // ignore: avoid_print
                  print("---------------");
                  // ignore: avoid_print
                  print(getdata.body);
                  // ignore: avoid_print
                  print("---------------");
                } else {
                  setState(() {
                    body = "Error: ${getdata.statusCode}";
                  });
                  // ignore: avoid_print
                  print("Error: ${getdata.statusCode}");
                }
              },
              child: const Text("Get Data"),
            ),
          ],
        ),
      ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
