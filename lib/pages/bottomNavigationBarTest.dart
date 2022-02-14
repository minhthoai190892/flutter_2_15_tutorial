// ignore_for_file: file_names

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';
import 'package:intl/intl.dart';

class BottomNavigationBarTest extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  BottomNavigationBarTest({Key? key}) : super(key: key);
  static const nameRoute = '/BottomNavigationBarTest';

  @override
  State<BottomNavigationBarTest> createState() =>
      _BottomNavigationBarTestState();
}

class _BottomNavigationBarTestState extends State<BottomNavigationBarTest> {
  var faker = Faker();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> widget = [
      ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundImage:
                NetworkImage("https://picsum.photos/id/${index + 1}/200/300"),
          ),
          title: Text(faker.person.name()),
          subtitle: Text(DateFormat.yMMMd().format(DateTime.now())),
        ),
      ),
      const Center(
        child: Text("data1"),
      ),
      const Center(
        child: Text("data2"),
      ),
      const Center(
        child: Text("data3"),
      ),
      const Center(
        child: Text("data4"),
      )
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("FakerTest"),
      ),
      body: widget[currentIndex],
      floatingActionButton: const floatingActionButton(),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.amber[900],
        items: const [
          TabItem(title: 'Tab A', icon: Icons.add),
          TabItem(title: 'Tab B', icon: Icons.near_me),
          TabItem(title: 'Tab C', icon: Icons.web),
          TabItem(title: 'Tab C', icon: Icons.web),
          TabItem(title: 'Tab C', icon: Icons.web),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
