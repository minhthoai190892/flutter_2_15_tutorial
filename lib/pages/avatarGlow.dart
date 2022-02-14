// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_2_15/widgets/floating_action_button.dart';
import 'package:avatar_glow/avatar_glow.dart';

class AvatarGlowW extends StatefulWidget {
  const AvatarGlowW({Key? key}) : super(key: key);
  static const nameRoute = '/AvatarGlowW';

  @override
  State<AvatarGlowW> createState() => _AvatarGlowWState();
}

class _AvatarGlowWState extends State<AvatarGlowW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AvatarGlowW"),
      ),
      body: Center(
        child: AvatarGlow(
          endRadius: 100.0,
          glowColor: Colors.red,
          duration: const Duration(milliseconds: 2000),
          child: Material(
            // Replace this child with your own
            elevation: 8.0,
            shape: const CircleBorder(),
            child: CircleAvatar(
              backgroundColor: Colors.grey[100],
              backgroundImage:
                  const NetworkImage("https://picsum.photos/200"),
              radius: 50.0,
            ),
          ),
        ),
      ),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
