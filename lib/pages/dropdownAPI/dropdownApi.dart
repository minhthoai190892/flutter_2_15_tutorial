// ignore_for_file: file_names, deprecated_member_use

import 'dart:convert';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_2_15/pages/dropdownAPI/model/city.dart';
import 'package:flutter_2_15/pages/dropdownAPI/model/province.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';
// ignore: unused_import
import 'package:http/http.dart' as http;

class DropDownAPI extends StatelessWidget {
  DropDownAPI({Key? key}) : super(key: key);
  static const nameRoute = '/DropDownAPI';
  final String apiKey =
      "e8a4a619df6866fb687b2407e26fd74c9dd80122be66961404178d110eca78d3";
  String? idProv;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DropDownAPI"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          DropdownSearch<Province>(
            mode: Mode.MENU,

            label: "Menu mode",
            hint: "country in menu mode",
            // ignore: avoid_print
            //lấy id dữ liệu tĩnh
            onChanged: (value) => idProv = value?.id,
            //lấy id dữ liệu tĩnh
            showClearButton: true,
            showSearchBox: true,
            dropdownBuilder: (context, selectedItem) =>
                Text(selectedItem?.name ?? "have not chosen a province "),
            popupItemBuilder: (context, item, isSelected) => ListTile(
              title: Text(item.name),
            ),
            // selectedItem: "Brazil"
            onFind: (text) async {
              var response = await http.get(Uri.parse(
                  "https://api.binderbyte.com/wilayah/provinsi?api_key=$apiKey"));
              if (response.statusCode != 200) {
                return [];
              }
              List allProvince =
                  (json.decode(response.body) as Map<String, dynamic>)['value'];
              List<Province> allModelProvince = [];
              allProvince.forEach((element) {
                allModelProvince.add(
                  Province(
                    id: element['id'],
                    name: element['name'],
                  ),
                );
              });
              return allModelProvince;
            },
          ),
          SizedBox(
            height: 10,
          ),
          DropdownSearch<City>(
            mode: Mode.MENU,

            label: "Menu mode",
            hint: "country in menu mode",
            // ignore: avoid_print
            //lấy id dữ liệu tĩnh
            onChanged: (value) => print(value),
            //lấy id dữ liệu tĩnh
            showClearButton: true,
            showSearchBox: true,
            dropdownBuilder: (context, selectedItem) => Text(
                selectedItem?.name ?? "Haven't chosen a city/district yet  "),
            popupItemBuilder: (context, item, isSelected) => ListTile(
              title: Text(item.name),
            ),
            // selectedItem: "Brazil"
            onFind: (text) async {
              print("Check idProv");
              print(idProv);
              var response = await http.get(Uri.parse(
                  "https://api.binderbyte.com/wilayah/kabupaten?api_key=$apiKey&id_provinsi=$idProv"));
              if (response.statusCode != 200) {
                return [];
              }
              List allCity =
                  (json.decode(response.body) as Map<String, dynamic>)['value'];
              List<City> allModelCity = [];
              allCity.forEach((element) {
                allModelCity.add(
                  City(
                    id: element['id'],
                    name: element['name'],
                    idProvinsi: 'id_provinsi',
                  ),
                );
              });
              return allModelCity;
            },
          ),
        ],
      ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
