import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';

class DropDownn extends StatefulWidget {
  DropDownn({Key? key}) : super(key: key);
  static const nameRoute = '/dropdown';

  @override
  State<DropDownn> createState() => _DropDownnState();
}

class _DropDownnState extends State<DropDownn> {
  final List dataItem = [
    {
      "item 1": "Item 1",
      "data": 1,
    },
    {
      "item 1": "Item 2",
      "data": 2,
    },
    {
      "item 3": "Item 3",
      "data": 3,
    },
  ];

  late int dataAwal;
  @override
  void initState() {
    dataAwal = dataItem[1]['data'];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DropDown"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: DropdownButton<int>(
            value: dataAwal,
            items: dataItem
                .map(
                  (e) => DropdownMenuItem(
                    child: Text("${e['item 1']}"),
                    value: e['data'] as int,
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                dataAwal = value!;
                print(value);
              });
            },
          ),
        ),
      ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
