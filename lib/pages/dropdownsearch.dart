
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';

// ignore: must_be_immutable
class DropDownSearchTest extends StatelessWidget {
  DropDownSearchTest({Key? key}) : super(key: key);
  static const nameRoute = '/DropDownSearchTest';

  List<Map<String, dynamic>> dataListCountry = [
    {
      "country": "Brazil",
      "id": 1,
    },
    {
      "country": "Italia (Disabled)",
      "id": 2,
    },
    {
      "country": "Tunisia",
      "id": 3,
    },
    {
      "country": "Canada",
      "id": 4,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DropDownSearchTest"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownSearch<Map<String, dynamic>>(
          mode: Mode.MENU,
          // showSelectedItems: true,
          items: dataListCountry,
          // ignore: deprecated_member_use
          label: "Menu mode",
          // ignore: deprecated_member_use
          hint: "country in menu mode",

          // ignore: avoid_print, unnecessary_null_in_if_null_operators
          onChanged: (value) => print(value?['id'] ?? null),
          selectedItem: dataListCountry[0],
          popupItemBuilder: (context, item, isSelected) => ListTile(
            title: Text(item['country'].toString()),
            textColor: Colors.red,
          ),
          showClearButton: true,
          showSearchBox: true,
          dropdownBuilder: (context, selectedItem) =>
              Text(selectedItem?['country'].toString() ?? "data"),
        ),
      ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
