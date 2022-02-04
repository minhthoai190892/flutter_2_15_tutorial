import 'package:flutter/material.dart';
import 'package:flutter_2_15/pages/example_basic.dart';
import 'package:flutter_2_15/pages/extract_widget.dart';
import 'package:flutter_2_15/pages/home_pages.dart';
import 'package:flutter_2_15/pages/mapping_collections.dart';
import 'package:flutter_2_15/pages/stateless_stateful.dart';
import 'package:flutter_2_15/pages/visible_invisible_widget.dart';
import 'package:flutter_2_15/pages/widget_dasar_page.dart';
import 'package:flutter_2_15/pages/wiget_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        HomePage.nameRote: (context) => const HomePage(),
        WidgetDasarPage.nameRote: (context) => const WidgetDasarPage(),
        VisibleInvisibleWidgetPage.routeName: (context) =>
            const VisibleInvisibleWidgetPage(),
        ExtractWidget.nameRoute: (context) => const ExtractWidget(),
        MappingCollection.nameRoute: (context) => MappingCollection(),
        WidgetBuilderr.nameRoute: (context) => const WidgetBuilderr(),
        ExampleBasic.nameRoute: (context) => const ExampleBasic(),
        StatelessStateful.nameRoute: (context) =>  StatelessStateful()
      },
    );
  }
}
