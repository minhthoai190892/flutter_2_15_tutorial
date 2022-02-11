import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';

class BottomSheett extends StatelessWidget {
  const BottomSheett({Key? key}) : super(key: key);
  static const nameRoute = '/BottomSheett';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isDismissible: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  builder: (context) => SizedBox(
                    height: 300,
                    child: ListView(
                      children:  [
                        const ListTile(
                          leading: Icon(Icons.photo),
                          
                          title:  Text("Photo"),
                        ),
                        const ListTile(
                          leading: Icon(Icons.music_note),
                          title: Text("Music"),
                        ),
                        const ListTile(
                          leading: Icon(Icons.video_call),
                          title: Text("Video"),
                        ),
                        const ListTile(
                          leading: Icon(Icons.share),
                          title: Text("Share"),
                        ),
                        ListTile(
                          onTap: () => Navigator.pop(context),
                          leading: const Icon(Icons.cancel),
                          title: const Text("Cancel"),
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: const Text("Bottom Sheett")),
        ),
      ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
