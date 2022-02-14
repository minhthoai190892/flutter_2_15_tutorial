import 'package:flutter/material.dart';
import 'package:flutter_2_15/pages/introduction/login_page.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class IntroductionScreenTest extends StatelessWidget {
  const IntroductionScreenTest({Key? key}) : super(key: key);
  static const nameRoute = '/IntroductionScreenTest';
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Title of first page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child:Lottie.asset("assets/lotties/laptop.json")
                // Image.network("https://picsum.photos/id/1/200/300", height: 175.0),
          
          ),
        ),
        PageViewModel(
          title: "Title of first page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child:Lottie.asset("assets/lotties/login.json")
                // Image.network("https://picsum.photos/id/10/200/300", height: 175.0),
          ),
        )
      ],
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      showNextButton: true,
      next: const Text("Next >>"),
      showBackButton: true,
      back: const Text("<< Back"),
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          ),
        );
        // When done button is press
      },
    ); //Material App
  }
}
