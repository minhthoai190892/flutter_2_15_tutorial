// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';

class TextFieldd extends StatefulWidget {
  const TextFieldd({Key? key}) : super(key: key);
  static const nameRoute = '/textfield';

  @override
  State<TextFieldd> createState() => _TextFielddState();
}

class _TextFielddState extends State<TextFieldd> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  TextEditingController phoneC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Field"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: emailC,
            autofocus: true,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              label: const Text("Email"),
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              // hintText: "Email enter ...",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              prefixIcon: const Icon(Icons.email),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: passwordC,
            autofocus: false,
            obscureText: isHidden,
            decoration: InputDecoration(
                label: const Text("Password"),
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                // hintText: "Email enter ...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: const Icon(Icons.vpn_key),
                suffixIcon: IconButton(
                    onPressed: () {
                      if (isHidden == true) {
                        isHidden = false;
                      } else {
                        isHidden = true;
                      }
                      setState(() {});
                    },
                    icon: const Icon(Icons.remove_red_eye))),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: phoneC,
            autofocus: false,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              label: const Text("Phone"),
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              // hintText: "Email enter ...",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              prefixIcon: const Icon(Icons.phone),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              // ignore: avoid_print
              print(
                  "Email: (${emailC.text}) \nPassword: (${passwordC.text})\nPhone: (${phoneC.text})");
            },
            child: const Icon(Icons.ac_unit),
            style: ElevatedButton.styleFrom(
                primary: Colors.red[900],
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                )),
          )
        ],
      ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
