// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';

class BottomNavigationBarr extends StatefulWidget {
  const BottomNavigationBarr({Key? key}) : super(key: key);
  static const nameRoute = '/BottomNavigationBarr';

  @override
  State<BottomNavigationBarr> createState() => _BottomNavigationBarrState();
}

class _BottomNavigationBarrState extends State<BottomNavigationBarr> {
  late int index;
  List showWidget=[
    const Center(child: Text("Home"),),
    const Center(child: Text("Profile"),),
  ];
  @override
  void initState() {
    index = 0;
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar"),
      ),
      body: showWidget[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.red,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
          // ignore: avoid_print
          print(value);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
