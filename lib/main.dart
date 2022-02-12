import 'package:flutter/material.dart';
import 'package:flutter_2_15/pages/bottomNavigationBar.dart';
import 'package:flutter_2_15/pages/bottomsheet.dart';
import 'package:flutter_2_15/pages/dialog.dart';
import 'package:flutter_2_15/pages/dropdown.dart';
import 'package:flutter_2_15/pages/example_basic.dart';
import 'package:flutter_2_15/pages/extract_widget.dart';
import 'package:flutter_2_15/pages/faker.dart';
import 'package:flutter_2_15/pages/futere_builder.dart';
import 'package:flutter_2_15/pages/home_pages.dart';
import 'package:flutter_2_15/pages/http_delete.dart';
import 'package:flutter_2_15/pages/http_get.dart';
import 'package:flutter_2_15/pages/http_post.dart';
import 'package:flutter_2_15/pages/http_put_patch.dart';
import 'package:flutter_2_15/pages/mapping_collections.dart';
import 'package:flutter_2_15/pages/navigation.dart';
import 'package:flutter_2_15/pages/snackBar.dart';
import 'package:flutter_2_15/pages/stateless_stateful.dart';
import 'package:flutter_2_15/pages/tabBar.dart';
import 'package:flutter_2_15/pages/textField.dart';
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
        StatelessStateful.nameRoute: (context) => const StatelessStateful(),
        Dialogg.nameRoute: (context) => const Dialogg(),
        SnackBarr.nameRoute: (context) => const SnackBarr(),
        TextFieldd.nameRoute: (context) => const TextFieldd(),
        TabBarr.nameRoute: (context) => const TabBarr(),
        DropDownn.nameRoute: (context) => const DropDownn(),
        BottomNavigationBarr.nameRoute: (context) =>
            const BottomNavigationBarr(),
        BottomSheett.nameRoute: (context) => const BottomSheett(),
        Navigationn.nameRoute: (context) => const Navigationn(),
        HttpGett.nameRoute: (context) => const HttpGett(),
        HttpPost.nameRoute: (context) => const HttpPost(),
        HttpPutPatch.nameRoute: (context) => const HttpPutPatch(),
        HttpDelete.nameRoute: (context) => const HttpDelete(),
        FutureBuilderr.nameRoute: (context) =>  FutureBuilderr(),
        FakerTest.nameRoute:(context)=>  FakerTest(),
      },
    );
  }
}
