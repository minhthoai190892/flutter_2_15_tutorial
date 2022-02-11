import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';

class StatelessStateful extends StatefulWidget {
  const StatelessStateful({Key? key}) : super(key: key);
  static const nameRoute = '/statelessStateful';

  @override
  State<StatelessStateful> createState() => _StatelessStatefulState();
}

class _StatelessStatefulState extends State<StatelessStateful> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stetaless vs Stateful"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$i",
              style: const TextStyle(fontSize: 50),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    i--;
                    // ignore: avoid_print
                    print(i);
                    setState(() {
                      
                    });
                  },
                  child: const Icon(Icons.remove),
                ),
                ElevatedButton(
                  onPressed: () {
                    i++;
                    // ignore: avoid_print
                    print(i);
                    setState(() {
                      
                    });
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
