import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';
import 'package:faker/faker.dart';

class FakerTest extends StatelessWidget {
  FakerTest({Key? key}) : super(key: key);
  var faker = new Faker();
  static const nameRoute = '/FakerTest';
  @override
  Widget build(BuildContext context) {
    print(faker.person.name());
    return Scaffold(
      appBar: AppBar(
        title: const Text("FakerTest"),
      ),
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://picsum.photos/id/${index+1}/200/300"),
          ),
          title: Text(faker.person.name()),
          subtitle: Text(faker.lorem.sentence()),
        ),
      ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
