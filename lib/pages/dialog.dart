import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';

class Dialogg extends StatelessWidget {
  const Dialogg({Key? key}) : super(key: key);
  static const nameRoute = '/dialogg';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Dialogg"),
          bottom: createTabBar(),
        ),
        body: TabBarView(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Warning"),
                      content: const Text("data"),
                      actions: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Icon(Icons.cancel_outlined),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Icon(Icons.agriculture),
                        ),
                      ],
                    ),
                  );
                },
                child: const Icon(Icons.ac_unit_outlined),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      title: const Text("Warning"),
                      content: const Text("dataaaaaaaaaaaaaaaaaaaaaaaa"),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(content: Text("data")));
                          },
                          child: const Icon(Icons.cancel_outlined),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Icon(Icons.agriculture),
                        ),
                      ],
                    ),
                  );
                },
                child: const Icon(Icons.ac_unit_outlined),
              ),
            )
          ],
        ),
        floatingActionButton: const floatingActionButton(),
      ),
    );
  }
}

TabBar createTabBar() {
  return TabBar(
    tabs: [
      Row(
        children: const [
          Icon(Icons.access_alarm),
          SizedBox(
            height: 5,
          ),
          Text("Alert Dialog"),
        ],
      ),
      Row(
        children: const [
          Icon(Icons.cloud_circle),
          SizedBox(
            height: 5,
          ),
          Text("Alert Dialog2"),
        ],
      ),
    ],
    isScrollable: true,
  );
}
