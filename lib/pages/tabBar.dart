// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TabBarr extends StatelessWidget {
  const TabBarr({Key? key}) : super(key: key);
  static const nameRoute = '/tabbar';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Tab Bar",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.amber[100],
          centerTitle: false,
          bottom: const TabBar(tabs: [
            Icon(
              Icons.camera,
              color: Colors.black,
            ),
            Text(
              "Tab 1",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Tab 2",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Tab 3",
              style: TextStyle(color: Colors.black),
            ),
          ]),
        ),
        body: const TabBarView(children: [
          Center(
            child: Text("camera"),
          ),
          Center(
            child: Text("tab 1"),
          ),
          Center(
            child: Text("tab 2"),
          ),
          Center(
            child: Text("tab 3"),
          ),
        ]),
      ),
    );
  }
}
