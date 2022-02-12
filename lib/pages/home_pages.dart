import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const nameRote = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                height: 200,
                width: double.infinity,
                color: Colors.amber.withOpacity(0.5),
                padding: const EdgeInsets.all(20),
                child: const Text(
                  "Menu",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                leading: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/widgetdasarpage');
                },
                leading: const Icon(Icons.home),
                title: const Text("widget Dasar Page"),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, '/visibleinvisiblewidget');
                },
                leading: const Icon(Icons.home),
                title: const Text("Visible Invisible Widget"),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/extractwidget');
                },
                leading: const Icon(Icons.home),
                title: const Text("Extract Widget"),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, '/mapping_collection');
                },
                leading: const Icon(Icons.home),
                title: const Text("Mapping Collections"),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/widgetbuilder');
                },
                leading: const Icon(Icons.home),
                title: const Text("Widget Builder"),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/example');
                },
                leading: const Icon(Icons.home),
                title: const Text("Example"),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/statelessStateful');
                },
                leading: const Icon(Icons.home),
                title: const Text("Stateless & Stateful"),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/dialogg');
                },
                leading: const Icon(Icons.home),
                title: const Text("Dialog"),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/snackbar');
                },
                leading: const Icon(Icons.home),
                title: const Text("Snack Bar"),
              ),
              ListTile(
                 onTap: () {
                  Navigator.pushReplacementNamed(context, '/textfield');
                },
                leading: const Icon(Icons.home),
                title: const Text("Text Field"),
              ),
              ListTile(
                 onTap: () {
                  Navigator.pushReplacementNamed(context, '/tabbar');
                },
                leading: const Icon(Icons.home),
                title: const Text("Tab Bar"),
              ),
              ListTile(
                 onTap: () {
                  Navigator.pushReplacementNamed(context, '/dropdown');
                },
                leading: const Icon(Icons.home),
                title: const Text("DropDown"),
              ),
              ListTile(
               onTap: () {
                  Navigator.pushReplacementNamed(context, '/BottomNavigationBarr');
                },
                leading: const Icon(Icons.home),
                title: const Text("BottomNavigationBarr"),
              ),
              ListTile(
               onTap: () {
                  Navigator.pushReplacementNamed(context, '/BottomSheett');
                },
                leading: const Icon(Icons.home),
                title: const Text("BottomSheett"),
              ),
              ListTile(
                 onTap: () {
                  Navigator.pushReplacementNamed(context, '/Navigationn');
                },
                leading: const Icon(Icons.home),
                title: const Text("Navigationn"),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/HttpGett');
                },
                leading: const Icon(Icons.home),
                title: const Text("HttpGett"),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/HttpPost');
                },
                leading: const Icon(Icons.home),
                title: const Text("HttpPost"),
              ),
              ListTile(
               onTap: () {
                  Navigator.pushReplacementNamed(context, '/HttpPutPatch');
                },
                leading: const Icon(Icons.home),
                title: const Text("HttpPutPatch"),
              ),
              ListTile(
               onTap: () {
                  Navigator.pushReplacementNamed(context, '/HttpDelete');
                },
                leading: const Icon(Icons.home),
                title: const Text("HttpDelete"),
              ),
              ListTile(
               onTap: () {
                  Navigator.pushReplacementNamed(context, '/FutureBuilderr');
                },
                leading: const Icon(Icons.home),
                title: const Text("FutureBuilderr"),
              ),
              ListTile(
                 onTap: () {
                  Navigator.pushReplacementNamed(context, '/FakerTest');
                },
                leading: const Icon(Icons.home),
                title: const Text("Faker Test"),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.home),
                title: const Text("Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
