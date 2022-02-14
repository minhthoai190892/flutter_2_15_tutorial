import 'package:flutter/material.dart';
import 'package:flutter_2_15/pages/home_pages.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const TextField(
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
              },
              child: const Text("Login Page"))
        ],
      ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
